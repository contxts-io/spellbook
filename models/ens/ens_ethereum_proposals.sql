{{ config(
    schema = 'ens_ethereum',
    alias = 'proposals',
    partition_by = ['block_date'],
    materialized = 'incremental',
    file_format = 'delta',
    incremental_strategy = 'merge',
    unique_key = ['created_at', 'blockchain', 'project', 'version', 'tx_hash'],
    post_hook='{{ expose_spells(\'["ethereum"]\',
                                "project",
                                "ens",
                                \'["soispoke"]\') }}'
    )
}}

{% set blockchain = 'ethereum' %}
{% set project = 'ens' %}
{% set dao_name = 'DAO: ENS' %}
{% set dao_address = '0x323a76393544d5ecca80cd6ef2a560c6a395b7e3' %}

with cte_support as (SELECT 
        voter as voter,
        CASE WHEN support = 0 THEN sum(weight/1e18) ELSE 0 END AS votes_against,
        CASE WHEN support = 1 THEN sum(weight/1e18) ELSE 0 END AS votes_for,
        CASE WHEN support = 2 THEN sum(weight/1e18) ELSE 0 END AS votes_abstain,
        proposalId
FROM {{ source('ethereumnameservice_ethereum', 'ENSGovernor_evt_VoteCast') }}
GROUP BY support, proposalId, voter),

cte_sum_votes as (
SELECT COUNT(DISTINCT voter) as number_of_voters,
       SUM(votes_for) as votes_for, 
       SUM(votes_against) as votes_against, 
       SUM(votes_abstain) as votes_abstain, 
       SUM(votes_for) + SUM(votes_against) + SUM(votes_abstain) as votes_total,
       proposalId
from cte_support
GROUP BY proposalId)

SELECT DISTINCT
    '{{blockchain}}' as blockchain,
    '{{project}}' as project,
    cast(NULL as string) as version,
    pcr.evt_block_time as created_at,
    date_trunc('DAY', pcr.evt_block_time) AS block_date,
    pcr.evt_tx_hash as tx_hash, -- Proposal Created tx hash
    '{{dao_name}}' as dao_name,
    '{{dao_address}}' as dao_address,
    proposer,
    pcr.proposalId as proposal_id,
    csv.votes_for,
    csv.votes_against,
    csv.votes_abstain,
    csv.votes_total,
    csv.number_of_voters,
    csv.votes_total / 1e9 * 100 AS participation, -- Total votes / Total supply (1B for Uniswap)
    pcr.startBlock as start_block,
    pcr.endBlock as end_block,
    CASE 
         WHEN pex.proposalId is not null and now() > pex.evt_block_time THEN 'Executed' 
         WHEN pca.proposalId is not null and now() > pca.evt_block_time THEN 'Canceled'
         WHEN pcr.startBlock < pcr.evt_block_number < pcr.endBlock THEN 'Active'
         WHEN now() > pqu.evt_block_time AND startBlock > pcr.evt_block_number THEN 'Queued'
         ELSE 'Defeated' END AS status,
    description
FROM  {{ source('ethereumnameservice_ethereum', 'ENSGovernor_evt_ProposalCreated') }} pcr
LEFT JOIN cte_sum_votes csv ON csv.proposalId = pcr.proposalId
LEFT JOIN {{ source('ethereumnameservice_ethereum', 'ENSGovernor_evt_ProposalCanceled') }} pca ON pca.proposalId = pcr.proposalId
LEFT JOIN {{ source('ethereumnameservice_ethereum', 'ENSGovernor_evt_ProposalExecuted') }} pex ON pex.proposalId = pcr.proposalId
LEFT JOIN {{ source('ethereumnameservice_ethereum', 'ENSGovernor_evt_ProposalQueued') }} pqu ON pex.proposalId = pcr.proposalId
{% if is_incremental() %}
WHERE pcr.evt_block_time > (select max(created_at) from {{ this }})
{% endif %}
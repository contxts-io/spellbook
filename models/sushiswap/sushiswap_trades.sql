{{ config(
        alias='trades',
        post_hook='{{ expose_spells(\'["ethereum", "gnosis", "avalanche_c"]\',
                        "project",
                        "sushiswap",
                        \'["augustog", "hosuke"]\') }}'
        )
}}

{% set sushi_models = [
'sushiswap_ethereum_trades'
,'sushiswap_avalanche_c_trades'
,'sushiswap_gnosis_trades'
] %}


SELECT *
FROM (
    {% for dex_model in sushi_models %}
    SELECT
        blockchain,
        project,
        version,
        block_date,
        block_time,
        token_bought_symbol,
        token_sold_symbol,
        token_pair,
        token_bought_amount,
        token_sold_amount,
        CAST(token_bought_amount_raw AS DECIMAL(38,0)) AS token_bought_amount_raw,
        CAST(token_sold_amount_raw AS DECIMAL(38,0)) AS token_sold_amount_raw,
        amount_usd,
        token_bought_address,
        token_sold_address,
        taker,
        maker,
        project_contract_address,
        tx_hash,
        tx_from,
        tx_to,
        trace_address,
        evt_index
    FROM {{ ref(dex_model) }}
    {% if not loop.last %}
    UNION ALL
    {% endif %}
    {% endfor %}
)
;

{{config(alias='bridges_ethereum',
        post_hook='{{ expose_spells(\'["ethereum"]\',
                                    "sector",
                                    "labels",
                                    \'["hildobby"]\') }}')}}

SELECT blockchain, address, name, category, contributor, source, created_at, updated_at
FROM (VALUES
    -- Binance, Source: https://etherscan.io/accounts/label/binance
    	(array('ethereum'), '0x8ed95d1746bf1e4dab58d8ed4724f1ef95b20db0', '0x: Erc20 Bridge Proxy', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x0ac2d6f5f5afc669d3ca38f830dad2b4f238ad3f', '0x: Eth2Dai Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xa6baaed2053058a3c8f11e0c7a9716304454b09e', '0x: Uniswap Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x96e471b5945373de238963b4e032d3574be4d195', '0xHabitat: Rollup Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x43298f9f91a4545df64748e78a2c777c580573d6', 'Across Protocol: Badger Bridge Pool', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x30b44c676a05f1264d1de9cc31db5f2a945186b6', 'Across Protocol: Bridge Admin', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xdfe0ec39291e3b60aca122908f86809c9ee64e90', 'Across Protocol: UMA Bridge Pool', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x256c8919ce1ab0e33974cf6aa9c71561ef3017b6', 'Across Protocol: USDC Bridge Pool', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x02fbb64517e1c6ed69a6faa3abf37db0482f1152', 'Across Protocol: WBTC Bridge Pool', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x7355efc63ae731f584380a9838292c7046c1e433', 'Across Protocol: WETH Bridge Pool', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xbbbd1bbb4f9b936c3604906d7592a644071de884', 'Allbridge: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xe5896783a2f463446e1f624e64aa6836be4c6f58', 'Arbitrum Nova: Challenge Manager', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x23122da8c581aa7e0d07a36ff1f16f799650232f', 'Arbitrum Nova: L1 Arb-Custom Gateway', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xb2535b988dce19f9d71dfb22db6da744acac21bf', 'Arbitrum Nova: L1 ERC20 Gateway', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xc840838bc438d73c16c2f8b22d2ce3669963cd48', 'Arbitrum Nova: L1 Gateway Router', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xe4e2121b479017955be0b175305b35f312330bae', 'Arbitrum Nova: L1 WETH Gateway', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xcee284f754e854890e311e3280b767f80797180d', 'Arbitrum One: L1 Arb - Custom Gateway', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xd3b5b60020504bc3489d6949d545893982ba3011', 'Arbitrum One: L1 DAI Gateway', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xa3a7b6f88361f48403514059f1f16c8e78d60eec', 'Arbitrum One: L1 ERC20 Gateway', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x72ce9c846789fdb6fc1f34ac4ad25dd9ef7031ef', 'Arbitrum One: L1 Gateway Router', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xd92023e9d9911199a6711321d1277285e6d4e2db', 'Arbitrum One: Wrapped Ether Gateway', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xa10c7ce4b876998858b1a9e12b10092229539400', 'Arbitrum: DAI L1 Escrow', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x4dbd4fc535ac27206064b68ffcf827b0a60bab3f', 'Arbitrum: Delayed Inbox', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x667e23abd27e623c11d4cc00ca3ec4d0bd63337a', 'Arbitrum: Outbox', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x0b9857ae2d4a3dbe74ffe1d7df045bb7f96e4840', 'Arbitrum: Outbox 4', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x14797f5432f699cb4d4db04df599b74952d78d7b', 'Arbitrum: Outbox Entry', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x1c479675ad559dc151f6ec7ed3fbf8cee79582b6', 'Arbitrum: Sequencer Inbox', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a', 'Arbitrum One: Lido L1 ERC20 Token Gateway', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0xdac7bb7ce4ff441a235f08408e632fa1d799a147', 'Avalanche: Avalanche-Ethereum Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x8eb8a3b98659cce290402893d0123abb75e3ab28', 'Avalanche: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xe78388b4ce79068e89bf8aa7f218ef6b9ab0e9d0', 'Avalanche: Old Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x1a2a1c938ce3ec39b6d47113c7955baa9dd454f2', 'Axie Infinity: Ronin Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x64192819ac13ef72bf6b5ae239ac672b43a9af08', 'Axie Infinity: Ronin Bridge V2', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x737901bea3eeb88459df9ef1be8ff3ae1b42a2ba', 'Aztec: Private Rollup Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xf78765bd14b4e8527d9e4e5c5a5c11a44ad12f47', 'Biconomy: Hyphen Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xecad1ab3464eccc7536af6afee414df873495616', 'BoringDAO: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x841ce48f9446c8e281d3f1444cb859b4a6d0738c', 'Celer Network: cBridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xc578cbaf5a411dfa9f0d227f97dadaa4074ad062', 'Celer Network: cBridge 2.0', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x5427fefa711eff984124bfbb1ab6fbf5e3da1820', 'Celer Network: cBridge V2', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xf1c1413096ff2278c3df198a28f8d54e0369cf3a', 'Celo: ETH Helper', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x74af8a878317e0f6e72e302fbcdf5f3009186398', 'Counterstake: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x4add6ab943e7908bb51e7878755d0ca322c898d6', 'Counterstake: USDC Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x3be8a7d4aa3e9b723a718e1b83fe8a8b5c37871c', 'Counterstake: WBTC Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x43de2d77bf8027e25dbd179b491e8d64f38398aa', 'deBridgeGate', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x5d22045daceab03b158031ecb7d9d06fad24609b', 'DeversiFi: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xd54f502e184b6b739d7d27a6410a67dc462d69c8', 'dYdX: L2 Perpetual Smart Contract', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x9280e0ffdfae4ec895fdf4d4978c9e1b869eb774', 'Evo DeFi: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x9a8c4bdcd75cfa1059a6e453ac5ce9d3f5c82a35', 'Fantom: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x6880f6fd960d1581c2730a451a22eed1081cfd72', 'Fuel: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x3014ca10b91cb3d0ad85fef7a3cb95bcac9c0f79', 'Fuse: Native Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x30f938fed5de6e06a9a7cd2ac3517131c317b1e7', 'Giveth: Trace Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x75ace7a086ea0fb1a79e43cc6331ad053d8c67cb', 'Gluon Network', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x88ad09518695c6c3712ac10a214be5109a655671', 'Gnosis Chain: Omni Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x4aa42145aa6ebf72e164c9bbc74fbd3788045016', 'Gnosis Chain: xDai Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xa4108aa1ec4967f8b52220a4f7e94a8201f2d906', 'Gravity Bridge: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xfd53b1b4af84d59b20bf2c20ca89a6beeaa2c628', 'Harmony: BUSD Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x2dccdb493827e15a5dc8f8b72147e6c4a5620857', 'Harmony: ERC20 Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x426a61a2127fdd1318ec0edce02474f382fdad30', 'Harmony: ERC721 Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xf9fb1c508ff49f78b60d3a96dea99fa5d7f3a8a6', 'Harmony: ETH Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xfe601de9d4295274b9904d5a9ad7069f23ee2b32', 'Harmony: LINK Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x4d34e61caf7a3622759d69e48ccdeb8dee5021e8', 'Harmony: ONE Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x1bd0029385f95ad2584cdfaf5c19f3f20651def6', 'Harmony: Token Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xe2e3441004e7d377a2d97142e75d465e0dd36af9', 'Hashflow: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xa929022c9107643515f5c777ce9a910f0d1e490c', 'HECO Chain: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x3d4cc8a61c7528fd86c55cfe061a78dcba48edd1', 'Hop Protocol: DAI Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xb8901acb165ed027e32754e0ffe830802919727f', 'Hop Protocol: Ethereum Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x22b1cbb8d98a01a3b71d034bb899775a76eb1cc2', 'Hop Protocol: MATIC Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x3666f603cc164936c1b87e207f36beba4ac5f18a', 'Hop Protocol: USDC Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x3e4a3a4796d16c0cd582c382691998f7c06420b6', 'Hop Protocol: USDT Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xb98454270065a31d71bf635f6f7ee6a518dfb849', 'Hop Protocol: WBTC Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x5fdcca53617f4d2b9134b29090c87d01058e27e9', 'Immutable X: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x37acfef331e6063c8507c2a69c97b4f78c770a5a', 'InstaDapp: Maker Compound Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x3307c46a1e9633025d2e89658c7502a683585450', 'iSwap: Ethereum Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x5a1d63d3e1303e89503f2a1ecb553328f148909d', 'Jointer: JNTR/e <> JNTR Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xf86fd6735f88d5b6aa709b357ad5be22cedf1a05', 'Layer2Finance: Rollup Chain', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675', 'LayerZero: Ethereum Endpoint', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x014f808b7d4b6f58be5fef88002d5028cd0ed14b', 'Lition: Token Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x0baba1ad5be3a5c0a66e7ac838a129bf948f1ea4', 'Loopring: Exchange v2', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x674bdf20a0f284d710bc40872100128e2d66bd3f', 'Loopring: Exchange v2 Deposit', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xec3cc6cf0252565b56fc7ac396017df5b9b78a31', 'Loopring: Exchange v2 Fast Withdrawal', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x3980c9ed79d2c191a89e02fa3529c60ed6e9c04b', 'Metis Andromeda: Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xc10ef9f491c9b59f936957026020c321651ac078', 'Multichain: anyCall V6', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xfc7cc7c7e7985316d23104b9689c511134f59bc8', 'Multichain: Astar Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x13b432914a996b0a48695df9b2d701eda45ff264', 'Multichain: BNB Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xc564ee9f21ed8a2d8e7e76c085740d5e4c5fafbe', 'Multichain: Fantom Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x87bcb3038988ca2a89605ffa8f237fb78df1c3ae', 'Multichain: Fuse Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x46290b0c3a234e3d538050d8f34421797532a827', 'Multichain: Fusion Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xd779967f8b511c5edf39115341b310022900efed', 'Multichain: Huobi Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x923e0a17f49fb03d936f2af2d59d379c615f5447', 'Multichain: KCC Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xec4486a90371c9b66f499ff3936f29f0d5af8b7e', 'Multichain: Moonbeam Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x10c6b61dbf44a083aec3780acf769c77be747e23', 'Multichain: Moonriver Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xe4cf417081a0ab3f964b44d904bc2b534351a9a7', 'Multichain: Oasis Network Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x533e3c0e6b48010873b947bddc4721b1bdff9648', 'Multichain: Old BSC Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xe95fd76cf16008c12ff3b3a937cb16cd9cc20284', 'Multichain: Router V3', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x6b7a87899490ece95443e979ca9485cbe7e71522', 'Multichain: Router V4', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x765277eebeca2e31912c9946eae1021199b39c61', 'Multichain: Router V4 2', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xba8da9dcf11b50b03fd5284f164ef5cdef910705', 'Multichain: Router V6', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x4e67df0f232c3bc985f8a63326d80ce3d9a40400', 'Multichain: Shiden Network Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x8cc49fe67a4bd7a15674c4ffd4e969d94304bbbf', 'Multichain: Syscoin Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0x57ed6bd35a6ce815079855cd0b21331d1d5d0a0e', 'Multichain: Telos Bridge', 'bridge', 'hildobby', 'static', timestamp('2022-09-22'), now())
    , (array('ethereum'), '0xcd9d4988c0ae61887b075ba77f08cbfad2b65068', 'Optimism: Synthetix L2 Deposit', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0x5fd79d46eba7f351fe49bff9e87cdea6c821ef9f', 'Optimism: Synthetix L2 Deposit Escrow', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0x99c9fc46f92e8a1c0dec1b1747d010903e884be1', 'Optimism: Gateway', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0xf20c38fcddf0c790319fd7431d17ea0c2bc9959c', 'Optimism: Legacy Bridge', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0xe681f80966a8b1ffadecf8068bd6f99034791c95', 'Optimism: Legacy Bridge', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0xc51f137e19f1ae6944887388fd12b2b6dfd12594', 'Optimism: Synthetix Legacy Bridge', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0x10e6593cdda8c58a1d0f14c5164b376352a55f2f', 'Optimism: DAI Bridge', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0xaba2c5f108f7e820c049d5af70b16ac266c8f128', 'Optimism: BITANT Bridge', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0xc5b1ec605738ef73a4efc562274c1c0b6609cf59', 'Optimism: dForce Bridge', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0x045e507925d2e05d114534d0810a1abd94aca8d6', 'Optimism: Synthetix Legacy L2 Bridge', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0x467194771dae2967aef3ecbedd3bf9a310c76c65', 'Optimism: DAI L1 Escrow', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0x76943c0d61395d8f2edf9060e1533529cae05de6', 'Optimism: Lido Bridge', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0x324c7ec7fb2bc61646ac2f22f6d06ab29b6c87a3', 'Optimism: Teleportr v1', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    , (array('ethereum'), '0x52ec2f3d7c5977a8e558c8d9c6000b615098e8fc', 'Optimism: Teleportr v2', 'bridge', 'msilb7', 'static', timestamp('2022-10-12'), now())
    ) AS x (blockchain, address, name, category, contributor, source, created_at, updated_at);
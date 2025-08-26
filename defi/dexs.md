# [Back to DeFi](defi)

- [Aggregators](dex_aggregators)
    - [Defi Llama - Top DEX Aggregators](https://defillama.com/dex-aggregators)
    - [Coin Gecko - Top DEX Aggregators](https://www.coingecko.com/en/categories/dex-aggregator)
    
- [Automatic Market Makers (AMMs)](dex_amms)
    - [DeFi Llama - Top DEXs](https://defillama.com/dexs)
    - [Coin Gecko - Top DEXs by Market Cap](https://www.coingecko.com/en/categories/automated-market-maker-amm)
    - [Coin Gecko - Top DEXs by Volume](https://www.coingecko.com/en/exchanges/decentralized)

- [Order Book DEXs](dex_order_book)

- [Perpetual / Derivatives DEXs](dex_perpetual_derivative)

- [RFA (Request-for-Quote) DEXs](dex_rfq)

- [Cross-chain / Multi-chain DEXs](dex_cross_multi_chain)

# ChatGPT 08-26-2025
Here’s a taxonomy of DEX categories, grouped by their core mechanism and design:

⸻

1. Order Book DEXs
	•	On-chain order book – All orders live fully on-chain (expensive, less common).
	•	Example: Serum (Solana).
	•	Off-chain order book / on-chain settlement – Matching engine off-chain, settlement on-chain (faster, more efficient).
	•	Examples: dYdX (perpetuals), 0x.

⸻

2. AMM DEXs (Automated Market Makers)
	•	Constant Product AMMs (x * y = k) – Liquidity pools set price by curve.
	•	Examples: Uniswap v2, PancakeSwap, SushiSwap.
	•	Constant Sum AMMs – Better for stable pairs, but more risk of imbalance.
	•	Example: DODO (hybrid).
	•	StableSwap Invariant AMMs – Curve-like design for low-slippage swaps of correlated assets (stablecoins, LSDs).
	•	Examples: Curve, Saddle, Ellipsis.
	•	Hybrid AMMs – Combine multiple pricing functions.
	•	Examples: Balancer (multi-asset pools), Kyber DMM (dynamic curves).

⸻

3. Aggregator DEXs
	•	Route orders across multiple DEXs for best price.
	•	Examples: 1inch, Matcha (0x), Paraswap, OpenOcean.

⸻

4. Perpetual / Derivatives DEXs
	•	Focused on perpetual futures, options, leveraged trading.
	•	Perpetuals: dYdX, GMX, Synthetix Perps, Perpetual Protocol.
	•	Options: Aevo (Ribbon), Dopex, Lyra.
	•	Structured Products: Pendle (yield tokenization), Opyn.

⸻

5. RFQ (Request-for-Quote) DEXs
	•	User requests price, professional market makers respond with quotes.
	•	Efficient for large block trades, less MEV exposure.
	•	Examples: 0x RFQ, CowSwap (batch auctions + RFQ).

⸻

6. Cross-chain / Multi-chain DEXs
	•	Native swaps across chains, sometimes using bridges or messaging protocols.
	•	Examples: Thorchain, Wormhole-based DEXs, SushiXSwap.

⸻

7. NFT DEXs
	•	For trading NFTs (single tokens, not fungible pairs).
	•	Examples: OpenSea (partially decentralized), Blur, Sudoswap (AMM for NFTs).

⸻

8. Hybrid / New Models
	•	Batch Auction DEXs – Aggregate orders into batches to minimize MEV and ensure fair pricing.
	•	Example: CowSwap.
	•	Intent-based DEXs – Users declare what they want, solvers compete to execute optimally.
	•	Example: Anoma, CowSwap (moving toward intents).
	•	On-chain RFQ + AMM combos – Mix of quotes + pools for better liquidity.

⸻

👉 So in short, the major categories of DEXs are:
(1) Order Book, (2) AMM (with subtypes), (3) Aggregators, (4) Derivatives/Perps, (5) RFQ, (6) Cross-chain, (7) NFT-focused, (8) Hybrid/Intent-based.

⸻

Do you want me to build you a visual taxonomy map (mind-map style) of DEX categories like we did for DeFi?



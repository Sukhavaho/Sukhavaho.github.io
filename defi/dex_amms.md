# Automatic Market Makers (AMMs)


- [Constant Product AMMs](dex_amm_constant_product)
    - [Uniswap](uniswap) 
- [Constant Sum AMMs](dex_amm_constant_sum)
- [StableSwap Invariant AMMs](dex_stableswap_invariant)
    - [Curve]
    - [Saddle]
    - [Ellipsis]


Overview
AMM DEXs (Automated Market Maker Decentralized Exchanges) differ from other DEX types (like order-books or aggregators) by replacing traditional matching of buyers and sellers with liquidity pools and algorithmic pricing. Instead of matching individual orders, trades are executed against a pool maintained by liquidity providers (LPs), and prices are set by pre-defined mathematical formulas (e.g., x × y = k constant-product)  ￼ ￼ ￼.

⸻

How AMMs Differ from Other DEX Types

DEX Type	How It Works	Trade-offs / Strengths
AMM DEX	Swap tokens via a liquidity pool with algorithmic pricing	Always liquid, permissionless, high transparency; but suffers slippage and impermanent loss  ￼ ￼
Order-Book DEX	Matches buy/sell orders (on-chain or off-chain)	Flexible pricing; but less liquidity, slower, often semi-custodial  ￼ ￼
DEX Aggregator	Routes trades across multiple DEXs to get best execution	Best prices, cross-chain; but adds complexity and reliance on aggregator infrastructure


⸻

Top 10 AMM DEXs (by TVL)

Here’s a Markdown-ready table of the top ten AMM DEXs, ranked by Total Value Locked (TVL) according to DefiLlama, along with their standout features:

# Top 10 AMM DEXs by TVL (2025)

| TVL Rank | AMM DEX         | Approx. TVL       | Key Features                                                  |
|----------|------------------|-------------------|---------------------------------------------------------------|
| 1        | Uniswap          | ~$5.95 B          | Pioneer of constant-product AMM; concentrated liquidity v3/v4  [oai_citation:7‡DeFi Llama](https://defillama.com/protocols/Dexs?utm_source=chatgpt.com) |
| 2        | Raydium          | ~$2.22 B          | Solana-native AMM deeply integrated with Serum order book  [oai_citation:8‡DeFi Llama](https://defillama.com/protocols/Dexs?utm_source=chatgpt.com) |
| 3        | PancakeSwap      | ~$2.16 B          | BNB Chain AMM, yield farming, lottery, NFT marketplace  [oai_citation:9‡DeFi Llama](https://defillama.com/protocols/Dexs?utm_source=chatgpt.com) [oai_citation:10‡Wikipedia](https://en.wikipedia.org/wiki/PancakeSwap?utm_source=chatgpt.com) |
| 4        | Curve DEX        | ~$2.096 B         | Specialized in low-slippage stablecoin swaps, vote-lock governance (veCRV)  [oai_citation:11‡DeFi Llama](https://defillama.com/protocols/Dexs?utm_source=chatgpt.com) [oai_citation:12‡DeFi Rate](https://defirate.com/dex/?utm_source=chatgpt.com) |
| 5        | Balancer         | ~$991 M           | Multi-asset pools with customizable weightings, portfolio management AMM  [oai_citation:13‡DeFi Llama](https://defillama.com/protocols/Dexs?utm_source=chatgpt.com) |
| 6        | Uniswap V2       | ~$2.13 B (subset) | Original constant-product model (legacy pools)  [oai_citation:14‡DeFi Llama](https://defillama.com/protocol/pancakeswap-amm?utm_source=chatgpt.com) |
| 7        | Uniswap V3       | ~$2.94–3.06 B     | Concentrated liquidity—capital efficient, but complex for LPs  [oai_citation:15‡DeFi Llama](https://defillama.com/protocol/pancakeswap-amm?utm_source=chatgpt.com) [oai_citation:16‡arXiv](https://arxiv.org/abs/2410.10162?utm_source=chatgpt.com) |
| 8        | MDEX             | ...               | Cross-chain AMM (HECO, BSC, ETH), dual-mining rewards  [oai_citation:17‡Wikipedia](https://zh.wikipedia.org/wiki/MDEX?utm_source=chatgpt.com) |
| 9        | SushiSwap        | ~$170–180 M       | Community-driven, multi-chain AMM with DeFi features  [oai_citation:18‡DeFi Llama](https://defillama.com/protocol/pancakeswap-amm?utm_source=chatgpt.com) |
| 10       | WOOFi Swap       | ~$9–10 M          | Niche or emerging AMM (lower TVL)  [oai_citation:19‡DeFi Llama](https://defillama.com/protocol/pancakeswap-amm?utm_source=chatgpt.com) |


⸻

Quick Summary
	•	AMM DEXs automate trading via pooled liquidity and formulaic pricing—simpler, always liquid, and decentralized—but they face slippage and impermanent loss issues.
	•	Compared to order-books, AMMs are more accessible and scalable; compared to aggregators, they’re simpler but less optimal on price.
	•	Top AMM DEXs by TVL (2025): Uniswap (incl. V2/V3), Raydium, PancakeSwap, Curve, Balancer, SushiSwap, MDEX, and WOOFi—each with unique strengths in chain, liquidity, and governance models.

Want features, chains supported, or governance token info in the table? Just say the word.




•	Constant Product AMMs (x * y = k) – Liquidity pools set price by curve.
	•	Examples: Uniswap v2, PancakeSwap, SushiSwap.
•	Constant Sum AMMs – Better for stable pairs, but more risk of imbalance.
	•	Example: DODO (hybrid).
•	StableSwap Invariant AMMs – Curve-like design for low-slippage swaps of correlated assets (stablecoins, LSDs).
	•	Examples: Curve, Saddle, Ellipsis.
•	Hybrid AMMs – Combine multiple pricing functions.
	•	Examples: Balancer (multi-asset pools), Kyber DMM (dynamic curves).



Automated Market Makers (AMMs) - The Uniswap Model
This is the most popular type of DEX, and the one that Uniswap pioneered.

How it works: Instead of an order book, AMMs use liquidity pools and a mathematical algorithm to determine the price of a token. Users can swap tokens by interacting with a smart contract, which pulls from these pools. The price of the token changes based on the ratio of the assets in the pool.

Key characteristics:

No traditional order book.

Relies on liquidity providers to supply tokens to the pools.

Examples: Uniswap, SushiSwap, PancakeSwap, Balancer.

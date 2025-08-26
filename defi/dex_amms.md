# Automatic Market Makers (AMMs)


- [Constant Product AMMs](dex_amm_constant_product)
    - [Uniswap](uniswap) 
- [Constant Sum AMMs](dex_amm_constant_sum)
- [StableSwap Invariant AMMs](dex_stableswap_invariant)
    - [Curve]
    - [Saddle]
    - [Ellipsis]


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

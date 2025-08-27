# Order Book DEXs
## See also: [DEX Aggregators](dex_aggregators)

Here’s a refined and GitHub-friendly breakdown:

⸻

DEX Order-Book DEXs

What are they, and how do they differ from other DEX types?

Order-Book DEXs emulate traditional exchanges with buy/sell order books instead of liquidity pools.
	•	How they differ

Type	Matching Mechanism	Pros	Cons
Order-Book DEXs	Match orders through bid/ask book	Precise pricing, limit orders, transparency	Less liquid, slower, potentially higher gas costs
AMM DEXs	Trade against liquidity pools via formulas	Always liquid, decentralized, simple	Slippage, impermanent loss, limited order types
Aggregator DEXs	Route trades across many DEXs to optimize execution	Best prices and slippage across sources	Complex, reliant on aggregator infrastructure


	•	Types of Order-Book DEXs
	•	On-chain order books: Orders are posted, matched, and settled directly on-chain—like Serum—providing full transparency but at higher gas cost.  ￼ ￼
	•	Off-chain order books with on-chain settlement: Order book management off-chain for speed & cost; actual trades settle via smart contracts. Examples: 0x, dYdX, IDEX.  ￼ ￼

⸻

Top 10 Order-Book DEXs

Exact TVL rankings for order-book DEXs are scarce—but here’s a ranked list based on prominence, adoption, and available data:

# Top Order-Book DEXs

| Rank | DEX           | Order-Book Type         | Key Features & Notes                                     |
|------|----------------|--------------------------|-----------------------------------------------------------|
| 1    | Serum          | On-chain (Solana)        | High composability, deep liquidity, low fees  [oai_citation:4‡The Switcheo Blog.](https://blog.switcheo.com/exploring-decentralized-amms-and-order-books/?utm_source=chatgpt.com) |
| 2    | dYdX           | Off-chain + On-chain on dYdX Chain | High throughput, margin/perps, migrating to decentralized order book  [oai_citation:5‡The Switcheo Blog.](https://blog.switcheo.com/exploring-decentralized-amms-and-order-books/?utm_source=chatgpt.com) [oai_citation:6‡Pintu](https://pintu.co.id/en/academy/post/what-is-decentralized-order-book?utm_source=chatgpt.com) |
| 3    | 0x Protocol    | Off-chain + On-chain     | Relayer-based order books, broad Ethereum ecosystem  [oai_citation:7‡stanford-jblp.pubpub.org](https://stanford-jblp.pubpub.org/pub/deconstructing-dex/release/1?utm_source=chatgpt.com) |
| 4    | IDEX           | Off-chain + On-chain     | Smooth UX, arbitrated queuing and settlement  [oai_citation:8‡stanford-jblp.pubpub.org](https://stanford-jblp.pubpub.org/pub/deconstructing-dex/release/1?utm_source=chatgpt.com) |
| 5    | Dexalot        | On-chain (Avalanche)     | Central Limit Order Book (CLOB) implemented on-chain  [oai_citation:9‡Cointelegraph](https://cointelegraph.com/news/the-role-of-central-limit-order-book-dexs-in-decentralized-finance?utm_source=chatgpt.com) |
| 6    | DeGate         | Off-chain (ZK Rollup)    | Low fees, orderbook UI on ZK, maker fee waivers, grid trading  [oai_citation:10‡INCRYPTED](https://incrypted.com/en/what-is-an-order-book/?utm_source=chatgpt.com) |
| 7    | Drift Protocol | Hybrid (Solana)          | Keeper bots, high throughput, limit + auto execution  [oai_citation:11‡Pintu](https://pintu.co.id/en/academy/post/what-is-decentralized-order-book?utm_source=chatgpt.com) |
| 8    | BitShares      | On-chain (Steem-based)   | Early order-book DEX model, decentralized trading  [oai_citation:12‡Streamflow Finance](https://streamflow.finance/blog/what-is-dex/?utm_source=chatgpt.com) |
| 9    | StellarTerm    | On-chain (Stellar)       | Traditional order-book interface on Stellar network  [oai_citation:13‡Streamflow Finance](https://streamflow.finance/blog/what-is-dex/?utm_source=chatgpt.com) |
| 10   | Orderly (NEAR) | On-chain (NEAR)          | Modular, matching engine for dApps, margin/futures ready  [oai_citation:14‡Reddit](https://www.reddit.com/r/nearprotocol/comments/v6942w?utm_source=chatgpt.com) |


⸻

Summary
	•	Order-book DEXs offer familiar trading flows with limit orders, bid/ask transparency, and tighter control—but they often lack the deep liquidity and low friction of AMMs.
	•	Different architectures:
	•	Fully on-chain (e.g., Serum, Dexalot)
	•	Hybrid: order books off-chain with on-chain settlement (e.g., 0x, IDEX, dYdX)
	•	Layer-2 or specialized chains (e.g., DeGate on ZK Rollup, Orderly on NEAR)
	•	Use-case fit: These are particularly appealing to traders needing precise execution (limit orders, margin, derivatives).

Let me know if you’d like to add TVL estimates, chain coverage, or trader fees into that table.

Order Book DEXs
This model is more similar to a traditional centralized exchange (CEX), but it operates in a decentralized way.

How it works: Users place "buy" and "sell" orders for tokens, which are then listed on an order book. The exchange's smart contracts match buyers and sellers when their orders align.


Key characteristics:

Uses a traditional order book, just like CEXs.

Can have issues with liquidity and "slippage" (the difference between the expected and executed price) if there aren't enough orders on the book.

Examples: dYdX (some of its features), and previously platforms like EtherDelta.


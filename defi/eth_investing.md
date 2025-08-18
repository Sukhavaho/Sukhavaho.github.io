# [Back to DeFi](defi)

See also: [ETH Investing Strategy](eth_investing_strategy)
See also:     [ETH Investing Specifics](eth_investing_specifics)

Here’s a deep, risk-first blueprint for turning your ETH into yield. I’ve organized it by “yield layers,” from lowest to highest risk/complexity. Under each: how it works, what to watch, leaders (incl. multi-chain), and concrete moves.

Layer 0 — Baseline staking (your risk floor)

Goal: capture protocol-native ETH issuance+MEV with minimal extra risk.
	•	What to use
	•	Direct LSTs (liquid staking tokens):
stETH (Lido) – largest liquidity & integrations. Pros: breadth, integrations; Cons: governance concentration, validator set centralization externalities.  ￼
rETH (Rocket Pool) – more decentralized, smoothing-pool MEV sharing for node ops; as a holder you benefit indirectly via rETH APR. Node operators can opt into the smoothing pool.  ￼
frxETH/sfrxETH (Frax) – sfrxETH auto-composes staking+MEV into the vault for a historically higher capture vs plain LST wrappers (implementation details in docs).
	•	Execution (baseline)
	•	Hold sfrxETH if you want max direct staking capture; stETH if you prioritize integrations/liquidity; rETH if you bias toward decentralization and mitigating single-provider risk.
	•	Risks to minimize
	•	LST depeg/liquidity (use deep venues/pools; avoid over-collateralized loops at high LTV).
	•	Validator/operator concentration externality.

Layer 1 — Restaking (EigenLayer & LRTs)

Goal: rent your ETH security to AVSs (Actively Validated Services) for extra rewards.
	•	How it works (crucial bits)
	•	EigenLayer lets ETH (native or via LST/LRT) be restaked and delegated to operators who secure AVSs (e.g., EigenDA). AVSs define custom slashing conditions; withdrawal flows for native restaking include mandatory delay windows.  ￼
	•	EigenDA is live on mainnet and is one of the flagship AVSs; it pays operators/restakers to provide DA.  ￼
	•	Leaders (LRTs)
	•	ether.fi (eETH / weETH), Renzo (ezETH), Puffer (pufETH), KelpDAO (rsETH) — all route restaked ETH to operators/AVSs and add protocol-level incentives. (You’re stacking smart-contract + operator + AVS slashing risk.)
	•	Execution
	•	Treat LRTs as a separate risk bucket from LSTs. Size small/medium. Route LRTs into Pendle PTs to lock fixed yield or into money markets only with conservative LTV.
	•	Risks to minimize
	•	Custom slashing (AVS-defined; non-ETH-consensus faults), withdrawal delays/escrows, operator misbehavior, new-surface governance risk. Read AVS terms before sizing!  ￼

Layer 2 — Credit markets (lend/borrow)

Goal: capture lending yields or fund hedges/leverage safely.
	•	Leaders
	•	Aave v3 (Ethereum + Arbitrum/Optimism/Base, etc.): robust risk tooling (Isolation Mode, E-Mode, caps). Use top-tier markets only.  ￼
	•	Spark (Maker ecosystem): supply DAI/sDAI to earn the DSR via Spark’s markets; good for conservative stable yield sourcing.  ￼
	•	Morpho Blue: isolated, oracle-scoped pairs with transparent risk configs; great for controlled counterparty exposure.  ￼
	•	Others to watch (size smaller): Compound v3, FraxLend (pair-specific risks).  ￼
	•	Execution
	•	Supply LST/LRT only where liquidity + oracle quality are top-tier. Keep low LTV; prefer fixed-maturity or isolate via Morpho Blue pairs.
	•	Risks
	•	Oracle events, liquidation cascades, asset depegs (esp. LRTs), governance/parameter changes.

Layer 3 — Yield tokenization (Pendle)

Goal: convert floating APR into fixed or levered yield views.
	•	Mechanics
	•	Wrap a yield asset → SY → split into PT (principal) and YT (yield); PT behaves like a discount bond redeeming 1:1 at maturity; YT receives the floating yield stream until maturity.  ￼
	•	Why it’s powerful
	•	Fix your yield: buy PT at discount, hold to maturity.
	•	Long yield: buy YT if you think underlying APR/incentives/points will rise.  ￼ ￼
	•	Execution
	•	Turn stETH/eETH/ezETH exposure into PT ladders (3–12 mo) to create a barbelled fixed-income strip in ETH terms. Roll, don’t chase.
	•	If you must farm points/incentives, express the view in YT size-capped (it decays to 0 at maturity).  ￼
	•	Risks
	•	Liquidity at specific maturities, underlying asset risk (depegs affect PT/YT), AMM basis. (Pendle docs/academy explain these explicitly.)  ￼ ￼

Layer 4 — Market-making (CLAMMs & managed vaults)

Goal: earn fees/incentives by providing liquidity with price risk managed.
	•	Where today
	•	Uniswap v4 (mainnet live) — concentrated liquidity + hooks enables vaults/hedges/limit orders at pool-level. Use professional vaults or your own logic.  ￼
	•	Arrakis v2, Gamma Strategies — active LP vaults that rebalance ranges; good infra for LST/LRT pairs; check vault docs & backtests.  ￼ ￼
	•	Balancer + Aura — weighted/stable pools with boosting for meta-incentives; pair stable-to-LST to reduce IL.  ￼
	•	Execution
	•	Prefer stable-to-LST or correlated pairs; narrow ranges only with automation + alerts; consider delta-hedged LP (short perp vs LP delta).
	•	Risks
	•	Impermanent loss dominates naive fee farming; range mismanagement. (Revisit your rebalancing logic after v4 hooks.)

Layer 5 — Derivatives income (basis, options)

Goal: turn volatility/term structure into low-beta yield.
	•	Perp basis (funding capture)
	•	Short perp where funding is rich, hold spot/treasury-backed stable to neutralize delta; rotate venues. dYdX v4 (app-chain), GMX v2 (Arbitrum), Synthetix Perps (Base/Optimism), Aevo (L2). Understand funding mechanics and venue risks.  ￼
	•	Options income
	•	Covered-call/put vaults (Aevo, Dopex, Lyra) or DIY with perps hedge. Vaults simplify ops but add strategy/venue risk. (See Aevo vault docs.)  ￼
	•	Execution
	•	Keep low leverage, cap venue exposure, and net to delta ≈ 0. Treat as satellite allocation.

Layer 6 — RWA parking (stable bucket)

Goal: reduce portfolio variance; fund hedges reliably.
	•	Leaders on Ethereum
	•	BlackRock BUIDL (tokenized cash management fund on Ethereum). Institutional-grade, used across integrations.  ￼
	•	Ondo OUSG / USDY: tokenized Treasuries/cash equivalents commonly paired with DeFi routes; used as composable collateral in certain venues. (Check current allow-lists & KYC.)  ￼
	•	Franklin OnChain money fund (BENJI) and Superstate products exist in the same design space—availability/chain support varies; verify bridge/allow-list status.  ￼ ￼
	•	Execution
	•	Park hedge collateral here (if eligible) and rebalance into perps/options as needed. Mind transfer/allow-list frictions.

⸻

Cross-chain & L2 routing (to amplify returns without blowing up risk)
	•	Where to deploy:
	•	Aave v3 markets on Arbitrum/Optimism/Base; GMX v2 on Arbitrum; Synthetix Perps on Base/Optimism; Lyra on Base; Aevo on its L2 stack; Pendle on multiple chains (incl. ETH L1 + L2s). (Confirm venue/asset lists before sizing.)
	•	Bridging
	•	Prefer official canonical bridges for L2s (Arbitrum/Optimism/Base), or risk-aware third-party bridges like Across; know trust assumptions.  ￼ ￼ ￼

⸻

Putting it together — three model stacks (you can mix)
	1.	Conservative ETH income (principal-preserving bias)
	•	60% sfrxETH (or stETH/rETH mix)
	•	20% PTs on Pendle laddered 3/6/12m (stETH/eETH)
	•	20% RWA (BUIDL/OUSG) as dry powder for hedges
	•	Optional: 5–10% of the above reallocated to Spark sDAI or Aave top-tier pools
	•	Notes: no leverage; avoid LRTs here. (PT ladder gives fixed-like ETH carry.)  ￼ ￼
	2.	Moderate restaking + fixed-income tilt
	•	35% LST core (sfrxETH / stETH / rETH)
	•	20% LRTs diversified (eETH/ezETH/pufETH/rsETH)
	•	25% Pendle PTs (on LSTs/LRTs you already hold)
	•	10% Morpho Blue isolated lends vs blue-chip collateral
	•	10% RWA buffer
	•	Risk controls: size LRTs ≤ your AVS/withdrawal comfort; keep loan LTV ≤ 30% on volatile underlyings.  ￼ ￼
	3.	Opportunistic (derivatives alpha with hard guardrails)
	•	30% LST core
	•	15% LRTs
	•	20% Perp basis (multiple venues), max 1–2× gross notional, strict stops
	•	15% Options income (Aevo/Lyra vaults or manual)
	•	10% Pendle YT (small, event-driven/airdrop/meta) + 10% RWA buffer
	•	Operate via L2s; bridge canonically; daily PnL & funding audits.  ￼ ￼

⸻

Risk playbook (use this everywhere)
	•	Slashing/AVS: size LRTs small; diversify operators/AVSs; understand custom slashing terms and withdrawal delays.  ￼
	•	Oracle/liquidation: cap LTV; prefer isolated pairs (Morpho Blue); monitor liquidity depth & oracle sources.  ￼
	•	IL & LP: only LP correlated assets or hedge deltas; consider managed vaults with transparent policies; revisit ranges post-Uniswap v4 hooks.  ￼
	•	Venue risk: split exposure across venues/chains; favor audited, time-tested codebases; keep warm wallets funded.
	•	Bridge risk: prefer canonical L2 bridges or well-analyzed designs; avoid bridging exotic assets if you’ll need exit liquidity.  ￼ ￼ ￼
	•	RWA legal: verify allow-lists, redemption terms, and custodial chains of control (BUIDL/OND0 docs).  ￼

⸻

Concrete “how-to” (stepwise)
	1.	Choose your core LST (sfrxETH vs stETH vs rETH) based on your priority (max yield vs integrations vs decentralization).  ￼ ￼
	2.	Add a measured LRT sleeve (eETH/ezETH/pufETH/rsETH). Keep this ≤ 20–30% of your ETH stack until you’re comfortable with AVS mix and withdrawal mechanics.  ￼
	3.	Lock part of the stack into fixed PTs on Pendle (3–12m) to immunize against APR swings; optionally express yield-bullish views via small YT.  ￼
	4.	Park your cash buffer in BUIDL or OUSG (if eligible) to fund hedges and fees; keep bridgeable stables on L2 for ops.  ￼
	5.	If you add derivatives, start with perp basis at low gross notional; then layer in covered-call vaults only after you size the funding stack.  ￼ ￼
	6.	Automate health/risk checks: on-chain alerts for LTV, price bands for LP, maturity calendars for PT rolls, AVS/operator changes for restaking.

⸻

Quick taxonomy (terms I’m using precisely)
	•	LST: liquid staking token (stETH, rETH, frxETH/sfrxETH).
	•	LRT: liquid restaking token (eETH, ezETH, pufETH, rsETH).
	•	AVS: Actively Validated Service consuming restaked security (e.g., EigenDA).  ￼
	•	PT / YT: Pendle’s Principal/Yield tokens; PT ≈ zero-coupon bond redeeming 1:1 at maturity; YT receives the yield stream until maturity.  ￼
	•	CLAMM: concentrated-liquidity AMM; v4 hooks = custom pool logic at runtime.  ￼
	•	DSR / sDAI: Maker’s Dai Savings Rate (exposed via sDAI and Spark).  ￼

⸻

If you want, I can turn this into an actionable checklist with specific positions (contracts, pools, maturities) and a roll calendar tailored to your risk budget and which chains you’re willing to use.


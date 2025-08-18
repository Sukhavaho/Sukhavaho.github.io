# [Back to DeFi](defi)

## [Back to ETH Investing](eth_investing)

# Baseline Staking (Layer 0 Runbook)

## Goal
Capture Ethereum’s native staking yield (issuance + tips + MEV) with the **lowest added risk**.  
This is the **risk floor** for all ETH yield strategies.

---

## Portfolio Mix (example allocation)

- **40% wstETH (Lido)**  
  - Breadth of integrations, DeFi/L2 ready (non-rebasing).  
  - **Contract (Ethereum L1):** `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`

- **35% rETH (Rocket Pool)**  
  - Decentralized operator set, smoothing pool reduces MEV/tip variance.  
  - **Acquire via:** Rocket Pool UI or Uniswap v3  
  - **Note:** Check Rocket Pool docs for latest address.

- **25% sfrxETH (Frax)**  
  - ERC-4626 vault, high capture of validator yield.  
  - **Contract (Ethereum L1):** `0xac3E018457B222d93114458476f3E3416Abbe38F`

**Optional:** Up to 10–20% in **solo validators** (32 ETH each) for sovereignty and custody.

---

## Acquisition

- **stETH/wstETH:** Swap ETH on Curve or Lido UI; wrap stETH → wstETH for DeFi/L2.  
- **rETH:** Acquire via Uniswap v3 or Rocket Pool UI.  
- **sfrxETH:** Mint frxETH from Frax, then deposit into the sfrxETH vault.

---

## Risks & Controls

- **Smart contract risk:** diversify across 3 protocols (Lido, Rocket Pool, Frax).  
- **Operator/slashing risk:** Rocket Pool’s distributed minipools + Lido’s multi-operator set reduce single-point failures.  
- **Exit liquidity risk:**  
  - *Lido:* withdrawal queue → ETH.  
  - *rETH:* swap back via secondary liquidity.  
  - *sfrxETH:* vault redemption → frxETH.  
- **Peg deviation:** monitor Curve/Uniswap pools for LST pricing vs ETH.  
- **Governance centralization:** keep Lido exposure under ~33% of your stack.

---

## Quarterly Exit Drill

Perform a small test exit each quarter:

- **stETH/wstETH:** Request withdrawal in Lido queue, test claim.  
- **rETH:** Swap a small amount back to ETH on Uniswap.  
- **sfrxETH:** Redeem a small amount back to frxETH.  

Record timings and slippage.

---

## Monitoring Checklist

- Lido withdrawal queue depth and processing speed.  
- rETH / ETH peg health.  
- sfrxETH share price (exchange rate vs frxETH).  
- Staking APR composition (issuance vs tips/MEV).  
- Lido’s market share (watch for >33% concentration).

---




### Layer 0 — Baseline staking (your risk floor)

Goal: capture protocol-native ETH issuance+MEV with minimal extra risk.
- What to use
- Direct LSTs (liquid staking tokens):
    - stETH (Lido) – largest liquidity & integrations. 

Pros: breadth, integrations; Cons: governance concentration, validator set centralization externalities.  ￼

- rETH (Rocket Pool) – more decentralized, smoothing-pool MEV sharing for node ops; as a holder you benefit indirectly via rETH APR. Node operators can opt into the smoothing pool.  ￼
- frxETH/sfrxETH (Frax) – sfrxETH auto-composes staking+MEV into the vault for a historically higher capture vs plain LST wrappers (implementation details in docs).
	•	Execution (baseline)
	•	Hold sfrxETH if you want max direct staking capture; stETH if you prioritize integrations/liquidity; rETH if you bias toward decentralization and mitigating single-provider risk.
	•	Risks to minimize
	•	LST depeg/liquidity (use deep venues/pools; avoid over-collateralized loops at high LTV).
	•	Validator/operator concentration externality.


### Deeper Dive
Here’s the deep dive on Layer 0 — Baseline staking (risk floor): a compact taxonomy → design choices → concrete setup → risk controls → monitoring.

Taxonomy (what “baseline” actually includes)
-	Solo staking (native, 32 ETH/validator). No token; you run keys/infra. Max control, highest operational burden.
-	Pooled native staking (non-LST). Operators run validators; you lock ETH and earn in-app, no transferable token.
-	Liquid staking tokens (LSTs). You delegate to a protocol and receive a transferable token whose value tracks staked ETH + rewards:
-	Rebasing balance (e.g., stETH): token balance increases daily. Better UX for wallets, awkward for some DeFi.  ￼
-	Value-accrual / exchange-rate (e.g., rETH, sfrxETH): balance constant; 1 token worth more ETH over time (exchange rate ↑). Cleaner for DeFi.  ￼ ￼
-	Wrapped LSTs for L2s (e.g., wstETH): a non-rebasing wrapper of stETH for cross-chain/money-market integrations.  ￼ ￼

Yield anatomy (what you’re actually earning)

Validator rewards on Ethereum = consensus issuance + execution-layer tips + MEV (plus occasional sync-committee duty). Typical split over time: issuance the bulk, priority fees/tips materially additive, MEV smaller but spiky.  ￼ ￼ ￼

Protocol specifics:
	•	Lido (stETH / wstETH): rebasing stETH; WithdrawalQueue model for redemptions (request → queue → claim ETH). wstETH is the wrapped, non-rebasing version used widely on L2s.  ￼ ￼ ￼
	•	Rocket Pool (rETH): exchange-rate token; operator set of independent “minipools”; Smoothing Pool evens block-proposer fee/MEV across participants.  ￼
	•	Frax (frxETH / sfrxETH): frxETH = liquidity “ETH-stable” unit; sfrxETH = ERC-4626 vault that captures validator yield → your claim on frxETH grows via share price. Frax also runs AMO mechanics (Curve/Convex) for frxETH liquidity management.  ￼ ￼

Design goals (maximize baseline yield, minimize baseline risk)
	1.	Diversify LST mechanisms (rebasing vs exchange-rate; operator set differences).
	2.	Minimize correlated operator/governance risk (avoid 100% exposure to one DAO/operator cohort).
	3.	Prefer L2-ready wrappers where you’ll use DeFi (e.g., wstETH).  ￼
	4.	Maintain exit liquidity (know the redemption queue + on-chain pool depth).  ￼
	5.	Avoid network-level externalities (keep any single protocol <~1/3 of your stake exposure to reduce centralization externalities).  ￼ ￼ ￼

Concrete portfolio blueprint (Layer-0 only)

Target for the baseline sleeve (before restaking/DeFi):
	•	40% stETH / wstETH (breadth + integrations; use wstETH if touching DeFi/L2).  ￼
	•	35% rETH (diversified operator set + smoothing of spiky exec rewards).  ￼
	•	25% sfrxETH (historically top baseline capture due to direct vault accrual).  ￼

If you run infra: replace up to 10–20% with solo validators to harden custody/sovereignty (accept ops burden).

Leaders & multi-chain footprint (within Layer-0)
	•	Lido (stETH / wstETH) — largest integrations; wrappers live across major L2s (OP, Arbitrum, Base via standard pattern). Strength: liquidity + composability. Watch: withdrawal queue dynamics; ongoing centralization debate around total market share.  ￼ ￼ ￼
	•	Rocket Pool (rETH) — permissionless node set, minipools, smoothing pool; ethos-aligned decentralization. Strength: operator diversity. Watch: rETH secondary liquidity vs stETH.  ￼
	•	Frax (sfrxETH) — ERC-4626 vault; clear accrual of validator yield; frxETH liquidity supported by AMO mechanics. Strength: clean accounting, often top baseline APY. Watch: reliance on Frax governance/AMO execution.  ￼

Execution checklist (Ethereum L1 first)
	•	Acquire LSTs via deep pools (Curve/Uni for stETH/rETH; mint → vault for sfrxETH). Verify token addresses from official docs/UIs before interacting.
	•	sfrxETH vault: 0xAc3E018457B222d93114458476f3E3416Abbe38F.  ￼
	•	wstETH wrapper (L1 address for import): 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0. (Useful to identify, even if minting via UI.)  ￼
	•	If using L2s: hold wstETH (not stETH) for integrations; confirm official bridging/wrapping flows per Lido docs.  ￼
	•	Rocket Pool exposure: hold rETH; you benefit from exchange-rate appreciation + smoothing-pool effects embedded via protocol accounting.  ￼

Risk model (what can break + controls)

1) Protocol smart-contract risk.
Mitigation: spread across 3 distinct implementations (Lido, Rocket Pool, Frax vault). Avoid >50% in any one. Keep a cold-wallet approval hygiene (revoke infinite approvals periodically).

2) Operator set / slashing risk.
	•	Lido uses a curated, multi-operator set; Rocket Pool distributes to many independent node operators; Frax runs its own validators. Diversify across these models.  ￼ ￼

3) Exit/queue liquidity risk.
	•	Lido uses a request → queue → claim model governed by validator exits and protocol buffers. Time-to-exit varies with queue depth/withdrawal churn. Keep a liquid ETH (or WETH) buffer for urgent needs.  ￼

4) LST peg/liquidity risk.
	•	Market price can deviate from 1 ETH (esp. during stress). Monitor Curve/Uni depth/slippage before sizing trades.

5) Governance/centralization externality.
	•	Community repeatedly flagged the 1/3 stake threshold as coordination risk. Keep Lido exposure below your own policy cap; consider rETH/sfrxETH to offset.  ￼ ￼

6) Cross-chain/middleware risk (if on L2).
	•	Prefer canonical bridges + native wrappers (wstETH) rather than third-party “wrapped-wrapped” assets.  ￼

Monitoring (what to watch, exactly)
	•	Redemption health (Lido): withdrawal queue status + average fulfillment time; watch Lido announcements if validator exits spike.  ￼
	•	rETH exchange rate drift: confirm rETH/ETH secondary peg and Rocket Pool docs for smoothing-pool distributions.  ￼
	•	sfrxETH share price: confirm vault exchange rate (sfrxETH→frxETH) per Frax docs; note AMO adjustments that may affect frxETH liquidity (not vault accounting).  ￼
	•	Macro staking yields: track issuance vs tips/MEV share to understand why baseline APR moves.  ￼ ￼
	•	Concentration metrics: Lido market-share news (don’t rely on memory; check current share if you approach your internal cap).  ￼

Practical playbook (baseline only, with actions)
	•	Allocate: 40% wstETH / 35% rETH / 25% sfrxETH. Rebalance quarterly to keep any single LST <50% and Lido < your policy cap (e.g., 33% of your total staked exposure).  ￼
	•	Liquidity buffer: 5–10% of portfolio in WETH/ETH (not staked) for redemptions/fees.
	•	Approvals hygiene: per-protocol spend caps (no infinite), quarterly revokes.
	•	Exit drills: once per quarter, do a small test: stETH withdrawal request → claim; rETH secondary swap; sfrxETH redeem to frxETH. Document timings.  ￼

Definitions (fast)
	•	LST: Liquid staking token; a bearer claim on staked ETH + rewards (via rebasing or exchange-rate).
	•	wstETH: Wrapped non-rebasing stETH; share-based; preferred in DeFi/L2.  ￼
	•	rETH: Rocket Pool LST; price appreciates vs ETH as rewards accrue.  ￼
	•	frxETH/sfrxETH: Frax ETH unit + ERC-4626 vault that accrues staking yield; you redeem more frxETH later.  ￼
	•	Smoothing Pool: Rocket Pool pool that averages priority fees/MEV among opted-in operators, reducing variance.  ￼
	•	Withdrawal queue: Lido’s on-chain request/claim queue to convert stETH→ETH.  ￼

⸻

If you want, I can generate a one-pager “baseline staking runbook” (addresses, UI links, exact approval limits, and a tiny checklist for doing the quarterly exit drill).

## Flow Diagram

```mermaid
flowchart TD
    ETH[ETH] -->|Stake via Lido| stETH[stETH]
    stETH --> wstETH[wstETH (wrapped, non-rebasing)]
    ETH -->|Stake via Rocket Pool| rETH[rETH]
    ETH -->|Mint via Frax| frxETH[frxETH]
    frxETH -->|Deposit to Vault| sfrxETH[sfrxETH]

    %% Exit flows
    stETH -->|Withdraw Queue| ETH
    wstETH -->|Unwrap → stETH| stETH
    rETH -->|Swap (Uniswap/Curve)| ETH
    sfrxETH -->|Redeem Vault| frxETH -->|Redeem| ETH


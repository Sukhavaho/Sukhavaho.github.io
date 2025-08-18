# [Back to ETH Investing Strategy](eth_investing_strategy)

Here’s your actionable ETH yield checklist, now enriched with specific contract addresses and Pendle PT examples so you can plug in confidently. Everything’s focused on Ethereum mainnet; let me know if you’d like L2 addresses too.

⸻

1. Core ETH Positions — LSTs

Asset	Contract Address (Ethereum)	Notes
sfrxETH (Frax)	0xac3E018457B222d93114458476f3E3416Abbe38F  ￼	ERC-4626 vault capturing staking + MEV yield  ￼
stETH (Lido)	Use via Lido interface or Curve; address widely available via Lido docs/Etherscan.	
rETH (Rocket Pool)	Same—acquire via deep liquidity on Uniswap or Rocket Pool interface.	

Task: Acquire ETH → mint/swap into the LSTs above via trusted interfaces or liquidity pools.
Review cadence: Quarterly peg + APR check.

⸻

2. Restaking via LRTs (EigenLayer)

Asset	Contract Address (Ethereum)	Notes
eETH (ether.fi)	0x35fa164735182de50811e8e2e824cfb9b6118ac2  ￼	eETH token from ether.fi; decentralized liquid restaking  ￼
ezETH (Renzo), pufETH, rsETH	Use Renzo/KelpDAO/Puffer interfaces—contract addresses available per protocol.	Select 2–3 to diversify AVS/operator exposure.

Task: Allocate ≤ 20–25% of ETH into 2–3 LRTs.
Review cadence: Monthly—check AVS slashing terms and EigenLayer updates.

⸻

3. Fixed Income via Pendle PTs

Example contract for PT-stETH maturing Dec 25, 2025:
	•	PT-stETH-25DEC25: 0xc374f7ec85f8c7de3207a10bb1978ba104bda3b2  ￼

Another example, possibly PT-stETH maturing Dec 30, 2027:
	•	PT-stETH-30DEC2027: 0xb253eff1104802b97ac7e3ac9fdd73aece295a2c  ￼

Mechanics: Deposit SY (e.g., SY-stETH) to mint PT and YT. PT redeems 1:1 to the accounting asset at maturity  ￼.

Task: Ladder PTs (e.g., Dec 2025, Mar 2026, Jun 2026) using assets you already hold (stETH, eETH, sfrxETH).
Review cadence: Monthly—roll PTs when they’re within 30 days of maturity.

⸻

4. Credit Market Parking (Optional)
	•	Aave v3 ETH/stETH markets: Use the official Aave UI.
	•	Morpho Blue isolated pairs for lending sfrxETH/stETH.
	•	Spark (sDAI): mint via Spark Markets to earn DSR.

Task: Supply assets only (no borrowing).
Review cadence: Bi-weekly—monitor utilization, caps, and oracle security.

⸻

5. RWA Buffer (Stable Anchor)
	•	BlackRock BUIDL token (Ethereum)—tokenized cash/money market fund.
	•	Ondo: OUSG / USDY—tokenized treasuries or cash equivalents (allow-list dependent).

Task: Subscribe or mint, keeping 10–20% of ETH-equivalent holdings in these.
Review cadence: Monthly—check NAV and redemption liquidity.

⸻

6. Opportunistic Derivatives (Small Allocation)
	•	Perp basis trades: Short ETH perps on dYdX v4, GMX v2, Synthetix Perps when funding > 20% annualized.
	•	Options vaults (covered calls): Aevo or Lyra ETH vaults.

Task: Keep delta-neutral (hedge with spot).
Review cadence: Daily—monitor funding and PnL.

⸻

Sample Action Table

Step	Allocation	What You Do & Exact Actions
1	50% ETH → sfrxETH	Send ETH to Frax → mint frxETH → deposit to vault at 0xac3E…be38F
	25% ETH → stETH	Swap via Curve or Lido UI
	25% ETH → rETH	Swap via Rocket Pool / Uniswap
2	20% ETH → LRTs	Mint eETH at 0x35fa…1ac2; add Renzo/pufETH/rsETH via UIs
3	25% stack → PTs	Use Pendle app to deposit SY-stETH (wrap), then select PT-stETH-25DEC25 (0xc374…a3b2), plus other maturities
4	10% → Aave/Morpho	Supply sfrxETH/stETH to Aave v3 or Morph Blue
5	15% → RWA tokens	Mint BUIDL / OUSG via their official portals
6	5% → Perp + Options	Execute perp basis short; deposit ETH into Aevo covered-call vaults


⸻

Monitoring & Automations
	•	Alerts: On-chain LTV and price alerts (DefiLlama, Defender).
	•	Roll reminders: PT maturity calendar with 30-day rolling triggers.
	•	Weekly Health Check: AVS terms, funding curves, NAVs.
	•	Bridge Prep: Keep some ETH or stable on L2s via trusted bridges in case you move into yield strategies there.

⸻

Let me know if you want L2 contract addresses, or a live spreadsheet template to auto-calc roll maturity dates, rebalance thresholds, or expected yields per layer.

Great—we’ll build on the strategy with (A) key L2 addresses/pointers and (B) a live spreadsheet template outline you can copy and automate.

⸻

A. L2 Contract Addresses & Bridge Details

These will let you deploy the same structure on Arbitrum (and similarly Optimism/Base, with minor adjustments via docs).

1. Pendle on Arbitrum
	•	Pendle markets (SY, PT, YT) are deployed on Arbitrum. You can fetch precise contract addresses from the Pendle GitHub deployments/42161-core.json or from each market page in the Pendle App UI.  ￼
	•	For example, if you want PT-stETH on Arbitrum, you’d find it via the Pendle Arbitrum market interface or that deployment JSON. Same for ezETH, sfrxETH, etc.

2. Ether.fi’s weETH on Arbitrum
	•	The wrapped version of eETH on Arbitrum is weETH, address: 0x35751007a407ca6feffe80b3cb397736d2cf4dbe  ￼.
	•	Balancer may have a weETH–rETH pool with a gauge; useful if you want added yield layers.  ￼.

3. Bridging Tools
	•	Lido → Arbitrum: Use Lido’s UI to bridge wstETH. The contract for wstETH (L1) you may need to import in your wallet: 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0  ￼.
	•	Pendle bridging e.g., eATH from Ethereum to Arbitrum: via Stargate Bridge, then deposit on Pendle.  ￼.

⸻

B. Spreadsheet Template Outline

You can build (or I can export) a Google Sheet or Excel with these tabs:

Tab Name	Columns / Purpose
Allocation	Strategy layer (LST / LRT / PT / RWA / Deriv…) – % target – Actual ETH amount – Address/Pool – Notes
PT Ladder	Token (e.g. PT-stETH-25DEC25) – Address – Maturity date – Discount rate – Quantity – Value at maturity – Roll-by date
Roll Calendar	Token – Maturity date – Roll-by (maturity minus 30d) – Replace with (new target maturity) – Status
LRT Exposure	Token (eETH / ezETH / …) – Address – Allocation – AVS/Slashing terms link – Next review date
Bridge Status	Asset – Bridge to (e.g., Arbitrum) – Bridge used – Tx hash – Confirmation – Available on L2? – Next step
Monitored Metrics	Asset – APR / yield – Peg status (LST) – Utilization (Aave) – Funding rate (Perp) – NAV (RWA) – Last updated
Alerts & Actions	Trigger (e.g., LTV > 30%) – Asset – Action (e.g., rebalance, roll PT) – Assigned – Due date – Done?

Implementation Suggestions
	•	Use formulas:
	•	% allocation = ETH amount / total ETH.
	•	For PT ladder: use =EDATE(maturity_cell, -1) to compute roll-by date (30–60 days earlier).
	•	Add conditional formatting:
	•	Highlight PT ladder rows within 30 days of maturity for immediate attention.
	•	Highlight LRT allocations over cap.
	•	Flag large deviations from target allocation.
	•	Pull live data via plugins (if using Google Sheets):
	•	Chainlink price feeds or DefiLlama live pulls for APR, funding rates, utilization.
	•	NAV from RWA pages with scraping or manual entry.
	•	Use checkboxes for “Done” items, date stamps with apps like “On change timestamp” for action tracking.

⸻

Next Steps
	•	If you want the actual spreadsheet template, tell me whether Google Sheets or Excel, and I’ll lay it out with sample rows and formulas.
	•	If you’d prefer I fetch specific Pendle L2 contract addresses (for a few prioritized assets like PT-stETH or PT-ezETH on Arbitrum), I’ll fetch those next.

Let me know how you’d like to proceed!



# Effect of Macroeconomic Indicators and Financial Information on Stock Prices in the Vietnam Market

**Panel Data Analysis from 2012–2022**

> Working paper. Originally submitted as a research project for *Economic and Financial Modelling* (EFM-T323WSB-4), Western Sydney University, December 2023. This version has not been peer-reviewed.

📄 **[Read the full paper (PDF)](./Effect_of_Macroeconomic_Indicators_and_Financial_Information_on_Stock_Prices_in_Vietnam_Market.pdf)**---

## Authors

- **Hoang Ngoc Anh Bui**
- **Anh Khoi Nguyen**
- **Pham Bao Nhi Luc**
- **Le Anh Quan Dao**
- **Pham Van Anh Ngo**

Group 5, Western Sydney University.
Supervised by **Mr. Pham Dinh Long** (EFM-T323WSB-4).

> Co-authors are credited equally. This repository is maintained by Hoang Ngoc Anh Bui as part of a graduate-school application portfolio; all co-authors have been informed of the public hosting.

---

## Abstract

This paper investigates the impact of macroeconomic variables, firm-level financial data, and corporate event indicators on the stock prices of companies listed in Vietnam's VN30 Index. Using a balanced panel of **19 VN30-listed firms over the period 2012–2022 (11 years)**, drawn from both financial (banks and insurance institutions) and non-financial sectors, we estimate a panel regression model linking stock prices to real interest rate, GDP, inflation, money supply (M1), net revenue, capital expenditure, return on average assets (ROAA), return on average equity (ROAE), earnings per share (EPS), and two policy/event dummies for dividend-payment activity and M&A activity.

Macroeconomic data are sourced from the World Bank and the Asian Development Bank; firm-level data are collected from audited financial statements and Vietstock. Following a Hausman test, we adopt a Random Effects Model, then apply a full battery of diagnostic tests (Heteroscedasticity Wald test, Breusch–Pagan LM test, and serial-correlation tests) and correct violations using cluster-robust standard errors and a 3-stage GLS specification.

The corrected model finds that **GDP, net revenue, and capital expenditure are statistically significant determinants of stock prices in the VN30**, while inflation, real interest rates, M1, EPS, and the profitability ratios (ROAA, ROAE) are not significant after correction. The dividend-payment and M&A dummies are also not individually significant at the 5% level. The findings diverge from several established results obtained in mature markets (notably the negative INF–SP and RIR–SP links found by Mulyanti et al., 2019, and the significance of ROAA/ROAE found by Bayhaqiyi, 2022), suggesting that **price formation in Vietnam — a frontier market characterised by limited liquidity, concentrated trading, and information asymmetry — is shaped more strongly by aggregate growth and firm-size effects than by classical valuation channels**.

---

## Methodology Summary

### Specification

A log-linear panel regression of the form:

```
log(p_ij) = α + β1·r_i + β2·log(gdp_i) + β3·infla_i + β4·log(m1_i)
          + β5·log(rev_ij) + β6·log(capex_ij) + β7·roaa_ij + β8·roae_ij
          + β9·divbm_ij + β10·ma_ij + β11·log(eps_ij) + μ_ij
```

where `i` indexes the year and `j` indexes the firm in HOSE.

### Sample

| Item | Detail |
|---|---|
| Index | VN30 (Ho Chi Minh Stock Exchange) |
| Firms | 19 listed firms (financial and non-financial) |
| Period | 2012–2022 (11 years) |
| Structure | Balanced panel |
| Macro sources | World Bank, Asian Development Bank |
| Firm-level sources | Audited financial statements, Vietstock |

### Estimation pipeline

1. **Model selection.** Hausman test (χ²(10) = 15.12, p = 0.1276) — fail to reject H₀ → **Random Effects Model (REM)** preferred over Fixed Effects.
2. **Diagnostics.**
   - Modified Wald test for groupwise heteroscedasticity → reject H₀ (p = 0.0000).
   - Breusch–Pagan LM test → χ̄²(01) = 439.72, p = 0.0000 → REM appropriate over pooled OLS.
   - Wooldridge-type serial-correlation test → reject H₀ (p = 0.0000).
3. **Correction.** Two parallel approaches:
   - **(i)** REM with **cluster-robust (heteroscedasticity-robust) standard errors**.
   - **(ii)** **3-stage GLS** specification correcting for panel-level heteroscedasticity, cross-panel correlation, and AR(1) within-panel serial correlation.
4. **Inference.** Coefficient estimates and statistical significance reported under both correction strategies.

### Software

All estimation, diagnostic testing, and post-estimation correction performed in **Stata**.

---

## Headline Results

After heteroscedasticity-robust correction:

| Variable | Coefficient | p-value | Significance |
|---|---:|---:|---|
| log(GDP) | +1.0509 | 0.001 | Significant at 1% |
| log(NR) | +0.2822 | 0.005 | Significant at 1% |
| log(CAPEX) | +0.0739 | 0.043 | Significant at 5% |
| Real interest rate, Inflation, log(M1), EPS, ROAA, ROAE | — | > 0.10 | Not significant |
| M&A dummy, Dividend-payment dummy | — | > 0.05 | Not significant |
| Constant | −10.5518 | 0.000 | Significant at 1% |

**Interpretation.** Aggregate macroeconomic growth (GDP) and firm-scale variables (revenue, capital expenditure) drive stock prices in the VN30. Classical channels emphasised in mature-market literature — interest rates, inflation, and accounting profitability — do not exhibit the expected significance once heteroscedasticity and serial correlation are corrected for. We read this as evidence that **frontier-market price formation is shaped by institutional and structural conditions** (limited liquidity, concentrated ownership, information asymmetry) rather than by the textbook valuation channels.

---

## Repository Contents

```
vn30-panel-data/
├── README.md                         # This file
├── Effect_of_Macroeconomic_...pdf    # Full paper (PDF)
└── (Stata .do files available on request)
```

Replication code (Stata `.do` files) and the panel dataset are available on request — please open an issue or contact the maintainer below.

---

## Citation

If you reference this work, please cite as:

> Bui, H. N. A., Nguyen, A. K., Luc, P. B. N., Dao, L. A. Q., & Ngo, P. V. A. (2023). *Effect of Macroeconomic Indicators and Financial Information on Stock Prices in the Vietnam Market: Panel Data Analysis from 2012–2022.* Working paper, Western Sydney University.

---

## Contact

Maintainer: **Hoang Ngoc Anh Bui** — bhnanh1311@gmail.com
GitHub: [@bhnanh](https://github.com/bhnanh)

---

## Disclaimer

This is an unrefereed working paper produced as undergraduate coursework. Results should be interpreted accordingly and not taken as financial advice. Any errors are the authors'.

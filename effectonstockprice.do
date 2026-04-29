*Create the entity variable.
encode co, gen(ent)
xtset ent t
*Regress the GLS fixed-effect model
xtreg lnp r Infla lngdp lnm1 lnrev lncapex eps divbm ma roae roaa, fe
* Storage
estimate store fe
* Regress the GLS random-effect model
xtreg lnp r Infla lngdp lnm1 lnrev lncapex eps divbm ma roae roaa, re
* Storage
estimate store re
*Choosing the model between FE and RE
hausman fe re
*Choosing between RE and OLS
xtreg lnp r Infla lngdp lnm1 lnrev lncapex eps divbm ma roae roaa, re
xttest0
*Choose RE Model
xtreg lnp r Infla lngdp lnm1 lnrev lncapex eps divbm ma roae roaa, re
*Test for heteroskedasticity
lmhwaldxt lnp r Infla lngdp lnm1 lnrev lncapex eps divbm ma roae roaa, id( ent) it( t)
*Test for autocorrelation
xtset ent t
xtreg lnp r Infla lngdp lnm1 lnrev lncapex eps divbm ma roae roaa, re
xttest1
*Fixing the heteroskedasticity and autocorrelation
xtreg lnp r Infla lngdp lnm1 lnrev lncapex eps divbm ma roae roaa, re
xtreg lnp r Infla lngdp lnm1 lnrev lncapex eps divbm ma roae roaa, robust re
* Applying the 3-stage GLS Model to confirm heteroskedasticityand autocorrelation
xtgls lnp r Infla lngdp lnm1 lnrev lncapex eps divbm ma roae roaa, panels(correlated) corr(ar1)
xtreg lnp r Infla lngdp lnm1 lnrev lncapex eps divbm ma roae roaa, re

#### Change response variable ####

CRAB$rounded.den<-round(CRAB$stand.den)
CRAB$abun<-CRAB$rounded.den/100
## turn the 0-100 values into 0-1
range(CRAB$abun)
unique(CRAB$abun)

## now make the values >0 and <1 for binomial
y.transf.betareg <- function(y){
  n.obs <- sum(!is.na(y))
  (y * (n.obs - 1) + 0.5) / n.obs
}

CRAB$beta.abun<- y.transf.betareg(CRAB$abun)
range(CRAB$beta.abun)
unique(CRAB$beta.abun)

write.csv(CRAB, "egc_working_data_21.csv")

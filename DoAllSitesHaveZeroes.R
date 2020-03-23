#### Checking for zeroes ####

sum(CRAB$stand.den == 0)
sum(CRAB$stand.den == 0) / nrow(CRAB)
plot(table(CRAB$density)) 

################### GOOD ##################

## Study Id 1 
sum(quinn$stand.den == 0)
sum(quinn$stand.den == 0) / nrow(quinn) 
plot(table(quinn$density)) 
## good

## Study Id 2 
sum(two$stand.den == 0)
sum(two$stand.den == 0) / nrow(two) 
plot(table(two$density)) 
a<-table(two$site.num, two$stand.den == 0)
plot(a)
## good

## Study ID 3
a<-table(three$site.num, three$stand.den == 0)
plot(a)
##good

## Study ID 8
a<-table(eight$site.num, eight$stand.den == 0)
plot(a)
sum(eight$stand.den == 0) / nrow(eight) 
write.csv(eight, "eight.csv")
eight2<-read.csv("eight.csv")
a<-table(eight2$site.num, eight2$stand.den == 0)
plot(a)
sum(eight$stand.den == 0) / nrow(eight) 
# this study is 495 observations, Fromm, ME
## two of the sites are ONLY zeroes (11, 13) ----- REMOVE THESE SITES??
### REMOVED
##good now

## Study ID 9
a<-table(nine$site.num, nine$stand.den == 0)
plot(a)
##good

## Study ID 10
a<-table(ten$site.num, ten$stand.den == 0)
plot(a)
## good

## Study ID 12
a<-table(twelve$site.num, twelve$stand.den == 0) ## only one site
range(twelve$stand.den)
## no zeroes but ok

## Study ID 13
a<-table(thirteen$site.num, thirteen$stand.den == 0) ## only one site
range(thirteen$stand.den)
## no zeroes but ok

## Study ID 15
a<-table(fifteen$site.num, fifteen$stand.den == 0) ## only one site
plot(a)
## good

## Study ID 16
a<-table(sixteen$site.num, sixteen$stand.den == 0) 
plot(a)
## good

## Study ID 17
a<-table(seventeen$site.num, seventeen$stand.den == 0) ## only one site
range(seventeen$density)
## good

#####################################################################

#### Not GOOD ####

## Study ID 4
a<-table(four$site.num, four$stand.den == 0)
plot(a)
table(four$site.num, four$stand.den == 0)
table(four$site.num, four$longitude)

## two of the sites (out of 3) don't have zeroes

## Study ID 5
a<-table(five$site.num, five$stand.den == 0)
range(five$density)

#only 15 observations, Bloch, MA
############## NO ZEROES ########################

## Study ID 7
a<-table(seven$site.num, seven$stand.den == 0)
plot(a)

#### ONLY site 117 doesn't have 0, all the rest do ####


## Study ID 11
a<-table(eleven$site.num, eleven$stand.den == 0)
plot(a)
a<-table(eleven$site.num, round(eleven$stand.den))

# 142 obs, Welch, ME **would like to keep
## only one zero
## four/five sites do not have zeroes

## Study ID 14
a<-table(fourteen$site.num, fourteen$stand.den == 0) 
plot(a)

#approximately half of sites don't have zeroes (5/9)


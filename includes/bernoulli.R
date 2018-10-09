# Title     : Formula Bernoulli
# Objective : Authomate probability computitions
# Created by: spolischook
# Created on: 9/19/18

source("combinatorics.R")

fBernoulli <- function(p, m, n) {
    q = 1 - p
    omega <- combinations(m, n)

    return (omega * p^m * q^(n-m))
}

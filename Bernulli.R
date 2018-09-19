# Title     : Formula Bernulli
# Objective : Authomate probability computitions
# Created by: spolischook
# Created on: 9/19/18

source("includes/combinatorics.R")

fBernulli <- function(p, m, n) {
    q = 1 - p
    Ω <- combinations(m, n)

    return (Ω * p^m * q^(n-m))
}

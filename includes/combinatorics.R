# Title     : Basic combinatorics formulas
# Objective : Authomate computitions
# Created by: spolischook
# Created on: 9/19/18

permutation <- function(m) {
    return (factorial(m))
}

arrangement <- function(m, n) {
    if (m > n) {
        stop("Wrong parameters! n paremeter MUST be greater or equal to m")
    }
    return (factorial(n)/factorial((n-m)))
}

combinations <- function(m, n) {
    if (m > n) {
        stop("Wrong parameters! n paremeter MUST be greater or equal to m")
    }
    numerator <- factorial(n)
    denuminator <- factorial(n-m) * factorial(m)
    return (numerator/denuminator)
}

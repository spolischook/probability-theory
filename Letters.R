# Title     : String permutations not depend by repetitions
# Objective : Authomate computition
# Created by: spolischook
# Created on: 9/19/18

stringPermutations <- function(string) {
    ch <- strsplit(string, "")[[1]]
    l <- length(ch)
    t <- table(ch)

    numerator <- factorial(l)
    denominator <- prod(factorial(t))

    return (numerator/denominator)
}

# Title     : Poisson limit
# Objective : https://en.wikipedia.org/wiki/Poisson_limit_theorem
# Created by: spolischook
# Created on: 09.10.18

fPoisson = function(lambda, k) {
    e <- exp(1)
    return (lambda^k/factorial(k)*e^-lambda)
}

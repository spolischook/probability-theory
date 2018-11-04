local_m_laplace_phi <- function(x) {
  pow <- -x^2/2
  e   <- exp(1) # Euler's number
  return (1/sqrt(2*pi)*(e^pow))
}

m_laplace_x <- function(k, n, p) {
  q <- 1-p
  return ((k - n*p)/sqrt(n*p*q))
}

local_m_laplace <- function(k, n, p) {
  q <- 1-p
  x <- m_laplace_x(k, n, p)
  phi_of_x <- local_m_laplace_phi(x)

  return (phi_of_x/sqrt(n*p*q))
}

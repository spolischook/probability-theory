# Commutator load

### The problem

Probability of client connection to commutator during 1 hour is 0.01.
Commutator handle 300 clients.

What the probability of:

- a) 4 clients will connect during hour
- b) less then 4 clients will connect during hour

### Solutions

The problem can be solved by Possion formula

![Poisson limit](./formulas/poisson_limit.svg)

a)

![solution a](./formulas/commutator_load.a.svg)

b)

![solution b](./formulas/commutator_load.b.svg)

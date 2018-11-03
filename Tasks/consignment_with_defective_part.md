# Consignment with defective part

### The problem

Controller check the consignment of `N` products through quality checking of `n` products.
In case of at least one product from `n` will be defective, consignment will returned.

What the probability that consignment that contains `m` defective goods will be accepted by controller?

### Solution

This task can be solved by **[Classical definition of probability](https://en.wikipedia.org/wiki/Classical_definition_of_probability)**:

    The probability of an event is the ratio of the number of cases favorable to it, 
    to the number of all cases possible when nothing leads us to expect 
    that any one of these cases should occur more than any other, 
    which renders them, for us, equally possible.
    
![solution](./formulas/consignment_with_defective_part.1.svg)

Consider next parameters

N = 100  
n = 15  
m = 5

```R
source('./includes/combinatorics.R')
N = 100
n = 15
m = 5
res <- combinations(n, N-m)/combinations(n, N)
```
res = 0.435683324407506

It's works for small number, but in large it overflow the available range of float numbers:

N = 1000
n = 200
m = 55

`res` would be NaN

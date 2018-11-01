# Students life

### The problem

Given probability of students availability at lesson is 0.8  
The number of students in group is 100  
Find probability of availability for the next ranges:
1. More then 75 but less then 90
2. Not less then 75
3. No more then 74

### Solution

There is single solution that available for calculation of probability
with range of parameters - [Moivre–Laplace theorem](https://en.wikipedia.org/wiki/De_Moivre%E2%80%93Laplace_theorem).
Integral equation is looks like:

![Moivre–Laplace integral theorem](./formulas/moivre-laplace-integral-theorem.svg)

For all subtasks there are next common values:

1. p = 0.8
2. q = 0.2
3. n = 100
---
For the first subtask:
1. k1 = 75
2. k2 = 90

So solution will looks like:

![First solution](./formulas/students_life.1.svg)
---
For the second subtask:

1. k1 = 75
2. k2 = 100

![Second solution](./formulas/students_life.2.svg)
---
For the third subtask:

1. k1 = 0
2. k2 = 74

![Second solution](./formulas/students_life.3.svg)

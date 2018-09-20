# Probability Theory

This repository contains test code for solving task with R language

## Setup

1. First of all you should get the current codebase. 
a) The best way is by git:
```bash
git clone https://github.com/spolischook/probability-theory
```

b) But you can also download it from github as well

![Download from GitHub](img/github_download.jpg)

Open RStudio [download and install it](https://www.rstudio.com/products/rstudio/download/#download)
Set current directory and source code:
```R
setwd("path/to/codebase/directory")
source("includes/combinatorics.R")
```

## Letters permutations

Source combinatorics before you start:

```R
source("Letters.R")
```
Then try first example:
```R
stringPermutations("THEORY")
```
```stringPermutations``` will return number of unique words that could be combined from letters of "THEORY".
The actual result will be **720**. However with the same number of letters result could be different, e.g.:

```R
stringPermutations("LETTER")
```
Result will be **180**, because of ```E``` and ```T``` letters are duplicated and thereby should be calculate by formula
of Permutation with Repetition

Learn more about [Permutation with Repetition](https://www.ck12.org/probability/permutations-with-repetition/lesson/Permutations-with-Repetition-BSC-PST/)

## Formula Bernulli

##### Source code

```R
source("Bernulli.R")
```

###### The problem
The probability of hit bull's-eye is 0.6. What is the probability from 8 shots there will be 6 hits bull's-eye?
###### The solution
n = 8 count of tests
m = 6 count of successes
p = probability of success

So by formula Bernulli we can find the solution

```R
fBernulli(p = 0.6, m = 6, n = 8)
```
even more we can drow dependency between probability and result. Use this:
```R
p = seq(0,1,by=0.01)
plot(fBernulli(p = p, m = 6, n = 8), type='l')
```

![Bernulli plot](img/bernuli_1.png)

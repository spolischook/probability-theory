# Letters permutations

Source combinatorics before you start:

```R
source("Letters.R")
```
Then try first example:
```R
stringPermutations("THEORY")
```
```stringPermutations``` will return number of unique words 
that could be combined from letters of "THEORY".
The actual result will be **720**. 
However with the same number of letters result could be different, e.g.:

```R
stringPermutations("LETTER")
```
Result will be **180**, because of ```E``` and ```T``` letters are duplicated 
and thereby should be calculate by formula of Permutation with Repetition:

![permutations with repetition](./formulas/permutations_with_repetitions.svg)

Learn more about [Permutation with Repetition](https://www.ck12.org/probability/permutations-with-repetition/lesson/Permutations-with-Repetition-BSC-PST/)

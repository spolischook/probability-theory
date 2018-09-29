# Shelf with books

### The problem

There are 15 books in random order on the shelf. 
5 books in hard cover. 
From the shelf take at random 3 books.
What probability that at least one of 3 will be hard covered.

### Solution

- `A` - is the event, at least one book from taken is hard covered.
- ![not A](./formulas/not_a.svg) - is the event, no hard covered books was taken from shelf

This task can be solved by **[Classical definition of probability](https://en.wikipedia.org/wiki/Classical_definition_of_probability)**:

    The probability of an event is the ratio of the number of cases favorable to it, 
    to the number of all cases possible when nothing leads us to expect 
    that any one of these cases should occur more than any other, 
    which renders them, for us, equally possible.
    
We will use combination formula to find out probability of ![not A](./formulas/not_a.svg) and `Ω`

![solution](./formulas/shelf_with_books.1.svg)

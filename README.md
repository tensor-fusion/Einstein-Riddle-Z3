# Einstein's Riddle in Z3

## Background

https://www.brainzilla.com/logic/zebra/einsteins-riddle

>The legend says that this problem was created by Albert Einstein in the last century. Einstein said that only 2% of the world could solve it.
>There are five houses of different colors next to each other. In each house lives a man. Each man has a unique nationality, an exclusive favorite drink, a distinct favorite brand of cigarettes and keeps specific pets. Use all the clues below to fill the grid and answer the question: "Who owns the fish?"

The clues are:
1. The Brit lives in a red house.
2. The Swede keeps dogs as pets.
3. The Dane drinks tea.
4. The green house is on the left of the white house (next to it).
5. The green house owner drinks coffee.
6. The person who smokes Pall Mall rears birds.
7. The owner of the yellow house smokes Dunhill.
8. The man living in the house right in the center drinks milk.
9. The Norwegian lives in the first house.
10. The man who smokes blend lives next to the one who keeps cats.
11. The man who keeps horses lives next to the man who smokes Dunhill.
12. The owner who smokes Blue Master drinks beer.
13. The German smokes Prince.
14. The Norwegian lives next to the blue house.
15. The man who smokes blend has a neighbor who drinks water.

## Z3 - Output

Z3 is an SMT solver / theorem prover used to check the satisfiability of logical formulas over one or more theories.

If you run:
```
z3 einst.smt2
```

You'll get the output:
```
sat
(
  (define-fun PallMall () Int 3)
  (define-fun Dog () Int 5)
  (define-fun Horse () Int 2)
  (define-fun Bird () Int 3)
  (define-fun Blend () Int 2)
  (define-fun RedHouse () Int 3)
  (define-fun YellowHouse () Int 2)
  (define-fun Fish () Int 4)
  (define-fun Tea () Int 4)
  (define-fun Norwegian () Int 1)
  (define-fun Brit () Int 3)
  (define-fun Swede () Int 5)
  (define-fun GreenHouse () Int 5)
  (define-fun BlueHouse () Int 4)
  (define-fun Prince () Int 4)
  (define-fun Beer () Int 1)
  (define-fun BlueMaster () Int 5)
  (define-fun Water () Int 5)
  (define-fun Dunhill () Int 1)
  (define-fun Cat () Int 1)
  (define-fun Coffee () Int 2)
  (define-fun Dane () Int 2)
  (define-fun WhiteHouse () Int 1)
  (define-fun Milk () Int 3)
  (define-fun German () Int 4)
)
```

The output consists of `(define-fun <variable> () Int <value>)` statements where each variable represents an attribute of a house in the puzzle (nationality, house color, beverage, cigar, or pet).
The values are ints corresponding to these attributes, e.g.

- `(define-fun YellowHouse () Int 2)` means the color of the second house is Yellow.
- `(define-fun Fish () Int 4)` means the pet in the fourth house is Fish.
  
## Houses

Output table:
| **House** | **Nationality** | **House Color** | **Beverage** | **Cigar**   | **Pet** |
|-----------|-----------------|-----------------|--------------|-------------|---------|
| House 1   | Norwegian       | White           | Beer         | Dunhill     | Cat     |
| House 2   | Dane            | Yellow          | Coffee       | Blend       | Horse   |
| House 3   | Brit            | Red             | Milk         | Pall Mall   | Bird    |
| House 4   | German          | Blue            | Tea          | Prince      | Fish    |
| House 5   | Swede           | Green           | Water        | Blue Master | Dog     |

The German (House 4) keeps the fish.

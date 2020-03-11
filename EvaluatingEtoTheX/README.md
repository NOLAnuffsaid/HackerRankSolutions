The series expansion of __e^x__ is given by:

Evaluate **__e^x__** for given values of **__x__** by using the above expansion for the first **__10__** terms.

##### Input Format

The first line contains an integer **__N__**, the number of test cases.

**__N__** lines follow. Each line contains a value of **__x__** for which you need to output the value of **__e^x__** using the above series expansion. These input values have exactly **__4__** decimal places each.

##### Output Format

Output **__N__** lines, each containing the value of **__e^x__**, computed by your program.

##### Constraints

```
1 <= N <= 50
-20.00 <= x <= 20.00
```

Var, Val in Scala and def and defn in Clojure are blocked keywords. The challenge is to accomplish this without either mutable state or direct declaration of local variables.

##### Sample Input

```
4
20.0000
5.0000
0.5000
-0.5000
```

##### Sample Output

```
2423600.1887
143.6895
1.6487
0.6065
```

##### Explanation

The output has the computed values of **__e^x__** corresponding to each test case. They are correct up to **__4__** decimal places and on separate lines.

##### Scoring

All test cases carry an equal weight in the final score. For your solution to pass a given test case, all the values of **__e^x__** computed by you must be within **__+/-0.1__** of the expected answers. This tolerance level has been kept to account for slightly different answers across different languages.


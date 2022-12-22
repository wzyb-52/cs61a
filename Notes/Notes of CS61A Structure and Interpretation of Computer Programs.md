# Notes of CS61A: Structure and Interpretation of Computer Programs

+ Carolt
+ 2022.12.8 -

[TOC]

## Chapter 1: Building Abstraction with Functions

### 1.1 Getting started

The high productivity of computer science is only possible because the discipline is built upon an elegant and powerful set of fundamental ideas. All computing begins with **representing information**, specifying **logic** to proces it, and designing **abstractions** that manage the complexity of that logic. Mastering these fundamentals will require us to understand precisely **how computers interpret computer programs and carry out computational processes**.

> This fundamental ideas have long been taught using the classic textbook *Structure and Interpretation of Computer Programs* ([SICP](http://mitpress.mit.edu/sicp)).

+++

Python excels as an instructional languafe because, throughout its history, Python's developers have emphasized the human interpretability of Python code, reinforced by the [Zen of Python](http://www.python.org/dev/peps/pep-0020/) guiding priciples of beauty, simplicity, and readability.

> A language isn't something you learn so much as something you join.
>
> ​                                                                                                                                                     —[Arika Okrent](http://arikaokrent.com/)

### 1.2 Elements of programming

The [Python 3 Library Docs](http://docs.python.org/py3k/library/index.html) list the functions defined by each module. This documentation is written for developers who know the whole language well.

+++

In Python, if a value has been given a name, we say that the name **binds** to the value. Names can also be bound to functions or other objects. When executing an assignment statement, Python evaluates all the expression to the right of `=` **before** changing the binding to any name on the left.

+++

In evaluating nested call expressions, the interpreter is itself following a procedure. The evaluation procedure to a call expression is **recursive** in nature:

+ **Evaluate** the operator and operand subexpressions, then
+ **Apply** the function that is the value of the operator subexpression **to** the arguments that are the values of the operand subexpressions.

> This part of evaluating a call expression reminds me of the *post-order tranverse of binaty tree* and *postfix expression*. And the illustration is called exactly an ***expression tree***.
>
> <img src="images/image-20221208221859928.png" alt="image-20221208221859928" style="zoom:80%;" />
>
> Viewing evaluation in terms of this tree, we can imagine that the values of the operand percolate upward, starting from the terminal nodes and then combining at higher levels.
>
> We take care of the primitive expressions such as numerals and names by stipulating that:
>
> + A numeral evaluates to the number it names.
>
> + A name evaluates to the value associated with that name in the current environment.
>
>   > **Environment** is the alies of memory that keeps track of the names, values, and binding.

However, the above evaluation procedure doesn't suffice to evaluate all Python code. In general, **statements** like `x = 4` are not evaluated but executed. Each type of expression or statement has its own evaluation or execution procedure.

### 1.3 Defining new functions

Function is an abstraction: binds name to expression.

```python
def <name>(<formal parameter>)
    return <return expression>
```

The body of function won't be executed until the function is called.

++++

The procedure of calling/applying a function:

+ creating a signature, adding a local frame which forms a new environment

  > `<name><formal parameter>` is called signature.

+ binding parameters(names) to arguments(values) in that frame

+ applying the function to the argument in that new environment

++++

Important things:

+ An environment is a sequence of frames.

  > A frame is consist of bindings between names and values.
  >
  > An environment is a sequence of frames.

+ A name evaluates to the value bound to that name in the earlist frame of the current envirenment in which that name is found.

+++

An environment keeps track of bindings between names and values.

Within a frame, a name can never be repeated, and it has to be bound to at most one value.

Assignment statements change bindings between names and values in frame.

### 1.4 Designing functions

+ A function's domain is the set of all inputs it might possibly take as arguments.
+ A function's range is the set of  all outputs it might possibly return.
+ A pure function's behavior is the relationship it creates between inputs and outputs.

Domain and range are concepts and should be documented in the annotation.

++++

A guide to designing function:

+ Give each function exactly one job.
+ Don't repeat yourself(DRY). Implement a wheel only once, but execute it many times.
+ Define function generally.

++++

Some suggestions to implementing functions:

+ Always documents the domain(inputs), range(outputs), and behavior of a fuction.

+ Always comments.

+ Use default argument values.

  > As a guideline, most data value used in a function's body should be expressed as default values to named arguments.

```python
>>> def pressure(v, t, n):
        """Compute the pressure in pascals of an ideal gas.

        Applies the ideal gas law: http://en.wikipedia.org/wiki/Ideal_gas_law

        v -- volume of gas, in cubic meters
        t -- absolute temperature in degrees kelvin
        n -- particles of gas
        """
        k = 1.38e-23  # Boltzmann's constant
        return n * k * t / v
```

## Chapter 2: Building Abstractions with Data





## Chapter 3: Interpreting Computer Programs





## Chapter 4: Data Processing




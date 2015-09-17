## Problem
# You want to create a set of API documentation for your application.
## You might want to go so far as to keep all your documentation in the same files as your source code.

## Solution
## It’s good programming practice to preface each of your methods, classes, and modules with a comment
## that lets the reader know what’s going on. Ruby rewards this behavior by making it easy to transform
## those comments into a set of HTML pages that document your code.

# Just a simple file that defines a sum method.

# Takes any number of numeric terms and returns the sum.
#   sum(1, 2, 3)                             # => 6
#   sum(1, -1, 10)                           # => 10
#   sum(1.5, 0.2, 0.3, 1)                    # => 3.0
def sum(*terms)
  terms.inject(0) { |sum, term| sum + term}
end

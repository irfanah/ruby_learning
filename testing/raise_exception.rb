## About Exceptions in Ruby

## An exception is an object, and the Kernel#raise method creates an instance of an exception class.
## By default, Kernel#raise creates an exception of RuntimeError class, which is a subclass of StandardError
## This in turn is a subclass of Exception, the superclass of all exception classes

## Problem
## An error has occurred and your code can’t keep running.
## You want to indicate the error and let some other piece of code handle it.

## Solution
## Raise an exception by calling the Kernel#raise method with a description of the error.
## Calling the raise method interrupts the flow of execution.

## You can list all the standard exception classes from below
ObjectSpace.each_object(Class) do |x|
  puts x if x.ancestors.member? Exception
end


## Code Example for Exception Raising

#Define you own Exception subclass
class NotInveribleError < StandardError
  
end
  
def inverse(x)
  raise NotInveribleError, "Argument is not numeric" unless x.is_a? Numeric
  1.0 / x
end

#print results

puts "__testing for raising an exception__"
puts inverse(2)      #returns 0.5
puts inverse("s")    #returns exception
puts "______________done_________________ "

## Problem
## You’re debugging an application, and would like to be able to stop the program at any point
## and inspect the application’s state (variables, data structures, etc.). You’d also like to
## be able to modify the application’s state before restarting it.

## Solution
## New to Ruby 2.1 is a debug library. As soon as you require debug, the execution hits a breakpoint
## and turns into an interactive Ruby session.

class Foo
    
    def initialize(init_value)
       @instance_var = init_value
    end
    
    def bar()
      test_var = @instance_var
      puts "you are about to hit the breakpoint"
      require 'debug'
      puts "here are the variables"
      puts "test variable #{test_var} and instance variable #{@instance_var}"
    end
    
end

f = Foo.new('welcome')
f.bar

 ## If you type s and press return, you will step to the next line.
 ## If you type n, you will skip over a line.
 ## If you type c, you will continue running your app.
 ## If you type p followed by a variable name, you can print the value of any variable:
 

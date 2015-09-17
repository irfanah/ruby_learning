## Problem
## You are debugging a program, and need to understand the stack traces that come with Ruby exceptions.
## Or you need to see which path the Ruby interpreter took to get to a certain line of code.

## Solution
## You can call the Kernel#caller method at any time to look at the Ruby interpreter’s current call stack.
## The call stack is represented as a list of strings.

## Example
## This Ruby program simulates a company with a top-down management style:
## one method delegates to another, which calls yet another.
## The method at the bottom can use caller to look upward and see the methods that called it:

class CEO
  def CEO.new_vision
    Manager.implement_vision
  end
end

class Manager
  def Manager.implement_vision
      Engineer.do_work
  end
end

class Engineer
  def Engineer.do_work
      puts 'How did i get here'
      first = true
      caller.each do |c|
          puts %{#{(first ? 'I':'which')} was called by "#{c}"}
          first = false
      end
  end
end


#Engineer.do_work
#Manager.implement_vision
CEO.new_vision

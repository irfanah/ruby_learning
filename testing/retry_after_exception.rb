## Problem
## You want to rerun some code that raised an exception,
## having (hopefully) fixed the problem that caused it in the first place.

## Solution
## Retry the code that failed by executing a retry statement within a rescue clause of a code block.
## retry reruns the block from the beginning.

##
## Here’s a demonstration of the retry statement.
## The first time the code block runs, it raises an exception.
## The exception is rescued, the problem is “fixed,” and the code runs to completion the second time:

def rescue_and_retry

  error_fixed = false
  begin
        puts   "I am before the raise in the begin block "
        raise  "Oops an error occured !" unless error_fixed
        puts   "I am after the raise in the begin block "
  rescue
        puts   "An Exception was thrown \n\n Retrying Now..."
        error_fixed = true
        retry
  end
        puts "I am after the end block of resuce "
end


rescue_and_retry

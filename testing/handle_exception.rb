## Handling Exception

## Problem
## You want to handle or recover from a raised exception.

## Solution
## Rescue the exception with a begin/rescue block. The code you put into the rescue clause
## should handle the exception and allow the program to continue executing.

## Example
  
  def raise_and_rescue
    
    begin
      puts  'I am before the raise'
      raise 'An Error occurred'
      puts  'After the raise'
    rescue
      puts  'I am rescued!'
    end
      
  end

raise_and_rescue()

  
##  If you want to interrogate a rescued exception, you can map the Exception object to a variable within the rescue clause.
##  Exception objects have useful methods like message and backtrace

 begin
   raise ' Testing an Exception '
 resuce Exception => e
   puts e.message
   puts e.backtrace
 end
 
  

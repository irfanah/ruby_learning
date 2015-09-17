## Problem
## You want to make your application log events or diagnostic data to a file or stream.
## You want verbose logging when your application is in development, and more taciturn logging when in production.

## Solution
## Use the logger library in the Ruby standard library.
## Use its Logger class to send logging data to a file or other output stream.


## In most cases, you’ll share a single Logger object throughout your application,
## as a global variable or module constant:

require 'Logger'
$LOG = Logger.new ($stderr)

## OR
## # Keep data for today and the past 1 day.
## # $LOG = Logger.new('application.log', 1, 'daily')


## You can then call the instance methods of Logger to send messages to the log
## at various levels of severity. From least to most severe,
## the instance methods are Logger#debug, Logger#info, Logger#warn, Logger#error, and Logger#fatal.

## Example
## This code uses the application’s logger to print a debugging message,
## and (at a higher severity) as part of error-handling code:

def divide (numerator ,denominator)
  $LOG.debug("Numerator :#{numerator},denominator#{denominator}")
  begin
       result = numerator / denominator
  rescue Exception => e
       $LOG.error "Error in division: #{e}"
       result = nil
  end
  return result
end

divide(10,2)
divide(10,0)


## Note

## The Logger object centralizes all the decisions be written to the log.
## When you write code, you simply assume that all the messages will be logged.
## At runtime, you can get a more or a less verbose log by changing the log level.

## A production application usually has a log level of Logger::INFO or Logger::WARN.
## The DEBUG log level is useful for step-by-step diagnostics of a complex task
## The ERROR level is often used when handling exceptions
## The FATAL level is used only when the program cannot recover or about to crash.

 

## Problem
### You want to find the slowest parts of your application, and speed them up.

## Solution
## Include the Ruby profiler in your application with include profile and the
## profiler will start tracking and timing every subsequent method call. When the application exits,
## the profiler will print a report to your program’s standard error stream.

require 'profile'

total = 0
# Count the letter sequences containing an a, b, or c.
('a'..'zz').each do |seq|
  ['a', 'b', 'c'].each do |i|
    if seq.index(i)
      total += 1
      break
    end
  end
end
puts "Total: #{total}"

## most of that is spent in Array#each,now replace that code with an equivalent regular expression

#total = 0
## Count the letter sequences containing an a, b, or c.
#('a'..'zz').each {|seq| total +=1 if seq =~ /[abc]/ }
#puts "Total: #{total}"

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10001st prime number?
# Notes: lol brute force.
# Answer: 104743

require 'mathn'
a = Prime.new
1.upto(10000) do
  a.next
end

puts a.next
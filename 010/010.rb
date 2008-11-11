# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.
# Answer: 142913828922
require '../lib/prime_sieve'

ret = 2000000.primesP3a.inject(0) do |sum, num|
  sum += num
end

puts ret
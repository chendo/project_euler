# The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, is unusual in two ways: (i) each of the three terms are prime, and, (ii) each of the 4-digit numbers are permutations of one another.
# 
# There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, exhibiting this property, but there is one other 4-digit increasing sequence.
# 
# What 12-digit number do you form by concatenating the three terms in this sequence?

require '../lib/prime_sieve'

primes = 10000.primesP3a.select { |i| i > 1000 }

sorted = {}


primes.each do |prime|
  sorted[key = prime.to_s.split(//).sort.join] ||= []
  sorted[key] << prime
end

def has_sequence?(numbers)
  (0..numbers.length - 3).each do |i|
     if numbers[i + 2] - numbers[i + 1] == numbers[i + 1] - numbers[i]
        puts numbers[i,3].join
      end
  end
  return false
end

ret = sorted.select { |k, v| v.length > 2 }

ret.each do |k, v|
  v.sort!
  if has_sequence? v
    p v
  end
end


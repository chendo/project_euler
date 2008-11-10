# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.
#
# Answer: 233168

def sum_mod(n, limit)
  total = 0
  n.step(limit, n) do |i|
    total += i
  end
  total
end

puts sum_mod(3, 999) + sum_mod(5, 999) - sum_mod(3 * 5, 999)


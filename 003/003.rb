# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?
# Answer: 6857

def get_prime_factors(num)
  if num % 2 == 0
    return [2] + get_prime_factors(num / 2)
  else
    i = 3
    while i * i < num
      if num % i == 0
        return [i] + get_prime_factors(num / i)
      end
      i += 2
    end
    return [num]
  end
end

puts get_prime_factors(600851475143).last
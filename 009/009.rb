# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
# Notes:
# In a pythagorean triplet a + b = c + 2[(c − a)(c − b)/2]1/2
# (c − a)(c − b)/2 is always a perfect square. This is particularly useful in checking if a given triplet of numbers is a pythagorean triple, but it is only a necessary condition, not a sufficient one. The triple {6, 12, 18} passes (c − a)(c − b)/2 but is not a PNT. A simpler, more powerful test is, (by naming the even leg a): (c − a) and (c − b)/2 are both perfect squares. This is both necessary and sufficient for the triple to be a PNT, but the PNT may be derivative. If any two sides of a PNT are relatively prime, it is a primitive PNT.
# Exactly one of a, b is odd; c is odd.
# The area (A = ab/2) is an integer.
# Exactly one of a, b is divisible by 3.
# Exactly one of a, b is divisible by 4.
# Exactly one of a, b, c is divisible by 5.
# Exactly one of a, b, (a + b), (b − a) is divisible by 7.
# All prime factors of c are primes of the form 4n + 1.
# At most one of a, b is a square.
# Answer: 31875000

def run
  1.step(1000, 2) do |c|
    1.upto(c) do |b|
      1.upto(b) do |a|
        if a + b + c != 1000
          next
        end
        if a * a + b * b == c*c
          puts a * b * c
          return
        end
      end
    end
  end
end
      
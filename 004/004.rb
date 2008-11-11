# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.
# Answer: 906609


def run
  999.downto(800) do |i|
    999.downto(800) do |j|
      a = (j * i).to_s
      if a == a.reverse
        puts a
        return
      end
    end
  end
end
run
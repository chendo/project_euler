# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 
# Find the sum of all the even-valued terms in the sequence which do not exceed four million.
# Answer: 4613732

a = 1
b = 1
i = 0
while true
  if a > 4000000
    puts i
    break
  end
  if a % 2 == 0
    i += a
  end
  
  n = a + b
  b = a
  a = n
end
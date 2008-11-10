# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.
# 
# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.
# Answer: 9110846700

puts (1..1000).to_a.inject(0) { |sum, num| sum += num**num }.to_s.match(/\d{10}$/)[0]
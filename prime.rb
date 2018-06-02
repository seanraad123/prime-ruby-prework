# Add  code here!
def is_prime?(n)
  output = (2..n).find { |i| n % i == 0 }
  output == n ? "#{n} is prime" : "#{n} is NOT prime"
end
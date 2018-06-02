# Add  code here!
def prime?(n)
  output = (2..n).find { |i| n % i == 0 }
  puts output ?
  output == n ? "#{n} is prime" : "#{n} is NOT prime"
end

prime?(3)

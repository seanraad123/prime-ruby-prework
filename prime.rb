# Add  code here!
def prime?(n)
  output = (2..n).find { |i| n % i == 0 }
  output == n ? return true : return false

prime?(3)

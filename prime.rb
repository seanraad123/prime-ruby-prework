# Add  code here!
require 'benchmark'
require 'bigdecimal/math'



def prime?(n)
    if n <= 1
       return false
    elsif n <= 3
       return true
    elsif n % 2 == 0 || n % 3 == 0
       return false
    end
    i = 5
    while i * i <= n
       if n % i == 0 || n % (i + 2) == 0
           return false
       end
       i += 6
    return true
    end
end

puts prime?(2)


iterations = 100_000

Benchmark.bm do |bm|
  # joining an array of strings
  bm.report do
    iterations.times do
      ["The", "current", "time", "is", Time.now].join(" ")
    end
  end

  # using string interpolation
  bm.report do
    iterations.times do
      "The current time is #{Time.now}"
    end
  end
end

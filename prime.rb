require 'benchmark'

# Using .any? Tends to benchmark faster with large numbers
def prime?(number)
  if number <= 1 # return false if number is a negative, 0, or 1
    false
  else
    # possible factors range from 2 to the square root of the number (rounded down to the nearest whole number)
    sqrt = Math.sqrt(number).floor
    factors = (2..sqrt).to_a
    if factors.any?{ |factor| number % factor == 0 }
      false
    else
      true
    end
  end
end

# Using .all? (tends to benchmark slower with large numbers)
# def prime?(number)
#   if number <= 1 # return false if number is a negative, 0, or 1
#     false
#   else
#     # possible factors range from 2 to the square root of the number (rounded down to the nearest whole number)
#     sqrt = Math.sqrt(number).floor
#     factors = (2..sqrt).to_a
#     factors.all?{ |factor| number % factor != 0 }
#   end
# end

puts Benchmark.measure{prime?(9393939)}

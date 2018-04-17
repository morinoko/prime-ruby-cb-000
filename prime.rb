def prime?(number)
  if number <= 1 # return false if number is a negative, 0, or 1
    false
  else
    # possible factors range from 2 to the square root of the number
    sqrt = Math.sqrt(number).floor
    factors = (2..sqrt).to_a
    if factors.any?{ |factor| number % factor == 0 }
      false
    else
      true
    end
  end
end

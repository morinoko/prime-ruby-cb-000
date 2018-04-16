def prime?(number)
  if number <= 1
    false
  else
    sqrt = Math.sqrt(number).floor
    divisors = (2..sqrt).to_a
    if divisors.any?{ |divisor| number % divisor == 0 }
      false
    else
      true
    end
  end
end

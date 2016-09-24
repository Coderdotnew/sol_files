# create a method, is_prime?, that checks if a number is prime or not
def prime?(num)
  (2...num).each do |i|
    return false if num % i == 0
  end
  true
end


# create a method, all_primes, that takes in a number as an argument 
# return all the prime numbers between 1 and the number input in an array
def all_primes(number)
  primes = []
  (2...number).each do |num|
    if prime?(num)
      primes << num 
    end
  end
  primes
end

PRIMES = [2, 3, 5, 7, 9, 11, 13, 17, 19] # ...

def factorize n
  factors = {}
  PRIMES.each do |prime|
    while n % prime == 0
      factors[prime] ||= 0
      factors[prime] += 1
      n /= prime
    end
  end
  factors
end

factors = {}
(1..20).each do |n|
  factorize(n).each do |prime, power|
    factors[prime] = [
      factors[prime] || 1,
      power
    ].max
  end
end

product = 1
factors.each do |prime, power|
  product *= prime ** power
end

puts product

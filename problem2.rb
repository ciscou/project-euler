@fibonacci_cache = {}

def fibonacci_r n
  if n < 2
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

def fibonacci n
  @fibonacci_cache[n] ||= fibonacci_r(n)
end

sum = 0
n = 0
while (fibonacci_n = fibonacci(n)) <= 4_000_000 do
  sum += fibonacci_n if fibonacci_n.even?
  n += 1
end

puts sum

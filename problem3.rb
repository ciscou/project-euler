class Numeric
  def palindrome?
    to_s == to_s.reverse
  end
end

largest_palindrome = -1;
999.downto 100 do |i|
  999.downto 100 do |j|
    product = i * j
    largest_palindrome = product if product > largest_palindrome and product.palindrome?
  end
end

puts largest_palindrome

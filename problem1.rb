def problem1(n)
  (1..n-1).select(&:multiple_of_3_or_5?).inject(0, &:+)
end

class Numeric
  def multiple_of_3_or_5?
    multiple_of?(3) || multiple_of?(5)
  end

  def multiple_of? n
    modulo(n) == 0
  end
end

puts problem1(1000)

# used like irb "arithmetic_utils.rb"

module ArithmeticUtils
  def digital_root
    return self if self < 10

    digits.sum.digital_root
  end

  def multiples_until(limit)
    [].tap do |m|
      i = 1
      while i * self < limit
        m << i * self
        i += 1
      end
    end
  end
end

Integer.include(ArithmeticUtils)

3.multiples_until(1)
3.multiples_until(10)

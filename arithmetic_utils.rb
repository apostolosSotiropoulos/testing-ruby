# used like: Integer.include(ArithmeticUtils)
module ArithmeticUtils
  def digital_root
    return self if self < 10
    digits.sum.digital_root
  end
end

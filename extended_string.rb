class ExtendedString < String
  def two_lettered_strings
    concat('_').scan(/../)
  end
end

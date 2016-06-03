class Common
  def keys
    "12345"
  end
end

class CurrencyConversionScreen < Common
  def from
      "Euro"
  end

  def to
      "USD"
  end

end

class AreaConversionScreen < Common
  def from
    "Square Foot"
  end

  def to
    "Square Mile"
  end

end


currency_conversion_screen = CurrencyConversionScreen.new
area_conversion_screen = AreaConversionScreen.new



puts currency_conversion_screen.from
puts currency_conversion_screen.to

puts area_conversion_screen.keys
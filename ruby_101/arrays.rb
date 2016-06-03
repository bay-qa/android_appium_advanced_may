currencies = ["US Dollar", "Euro", "British Pound", "Australian Dollar"]

puts currencies[2]
puts currencies[-1]
currencies[0] = "Bitcoin"

puts currencies.last
puts currencies.first


p currencies.length
p currencies.include? "Euro"

currencies << "Canadian Dollar"
currencies.unshift "Rouble"

currencies.each do |cur|
  puts cur
end

# currencies = []
# currencies = nil


p currencies

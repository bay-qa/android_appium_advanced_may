login = {:login => "user_01", :password => "pass01"}

puts login[:login]
puts login[:password]

login[:hint] = 'city'

p login.keys
p login.values
p login.to_a
# login.clear


p login.inspect

login.each do |key, value|
  puts "Login credentials are #{key}, #{value}"
end

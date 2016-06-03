# arrays
# hashes
# methods
# classes
# objects
# inheritance



def launch_app
  puts "Application has been launched!"
end

def exchange_canadian_dollar
  us_dollar = 1
  exchange_rate = 1.3
  # if using puts, return value is nil
  us_dollar * exchange_rate
end

def exchange( amount = 100, exchange_rate = 1 )
  amount * exchange_rate
end

def find_currency( currencies = [], target_currency )
  currencies.each do |currency|
    if currency == target_currency
      return "found #{target_currency}"
    end
  end
  puts "Did not find right currency"
end

launch_app
puts total_us_dollars = exchange_canadian_dollar + 0.3
puts exchange(200, 1.35)

currencies = ["US Dollar", "Euro", "British Pound", "Australian Dollar"]

puts find_currency currencies, "Euro"


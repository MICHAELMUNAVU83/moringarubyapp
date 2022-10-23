require_relative './app.rb'

def main
  puts "Dear Customer, Welcome to Moringa School"
  puts "Select an option below:\n"
  app = App.new
  app.run
end

puts "Enter USSD code"
ussd_code = gets.chomp

if ussd_code == "*555#"
  main
else
  puts "Invalid USSD code"
end


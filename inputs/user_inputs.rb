print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "How old are you? "
age = gets.chomp

puts "Your name is #{first_name} #{last_name} and you are #{age} years old."
print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "How old are you? "
age = gets.chomp

puts "Your name is #{first_name} #{last_name} and you are #{age} years old."

puts ""
puts "Now tell me, what do you do during your free time? (Use just a verb) "
answer = gets.chomp.downcase!

if answer.include? "c"
  puts "Hrm, so you like #{answer.gsub!(/c/, "k")}. Interesting!"
else
  puts "Hrm, so you like #{answer}."
end
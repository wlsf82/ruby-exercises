movies = {
  foo: 5,
  bar: 1,
  baz: 3,
  bah: 2
}

puts "What do you want do do? (choose one of the below options)"
puts "Type 'add' to add a new movie to the list"
puts "Type 'update' to update the rating of an existing movie"
puts "Type 'display' to display all movies and their rating"
puts "Type 'delete' to delete a movie"

choice = gets.chomp

case choice
  when "add"
    puts "What's the movie title?"
    title = gets.chomp
    if movies[title.to_sym].nil?    
      puts "How do you rate this movie, from 1 to 5 (where 1 is not good and 5 is very good)?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "Done! #{title.capitalize} movie added with rating #{rating}."
    else
      puts "This movie is already in the list, and its rating is #{movies[title.to_sym]}."
    end
  when "update"
    puts "Type the name of the movie you want to update."
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "This movie is not on the list. Hence it can't be updated."
    else
      puts "What should be the new rating of this movie? Type a number from 1 to 5 (where 1 is not good and 5 is very good)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "Done! Movie #{title.upcase} update with rate #{rating}."
    end
  when "display"
    movies.each do |movie, rate|
      puts "#{movie.capitalize}: #{rate}"
    end
  when "delete"
    puts "Which movie you want to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Movie not found."
    else
      movies.delete(title)
      puts "Done. Movie #{title.capitalize} was deleted."
    end
else
  puts "Sorry, this is not a valid option."
end
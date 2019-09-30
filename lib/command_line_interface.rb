def welcome
  puts "Welcome to StarWars API"
end

def get_character_from_user
  puts "please enter a character name"
  character_input = gets.chomp
  character_input.downcase
  # use gets to capture the user's input. This method should return that input, downcased.
end

def title_list(list)
  if list
  puts print_movies(list).join(", ")
  else puts "no character found"
  end
end
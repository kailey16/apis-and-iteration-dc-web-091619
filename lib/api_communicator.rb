require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character_name)
  data = RestClient.get('http://www.swapi.co/api/people/')
  hash = JSON.parse(data)
  films = nil
  hash["results"].each do |character|
    if character["name"].downcase == character_name
       films = character["films"].uniq
    else false
    end
  end
  films
end

def print_movies(films)
  # some iteration magic and puts out the movies in a nice list
    if films
      films.map do |each_film|
      data = RestClient.get(each_film)
      data_code = JSON.parse(data)
      data_code["title"]
      end
    else false
    end
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?

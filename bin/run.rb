#!/usr/bin/env ruby

require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"

welcome
character = get_character_from_user
films_array = get_character_movies_from_api(character)
title_array = print_movies(films_array)
title_list(films_array)

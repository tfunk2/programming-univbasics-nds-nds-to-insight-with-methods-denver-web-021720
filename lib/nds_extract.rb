$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross_earnings = 0 
  movie_index = 0 
  length_of_movie_list = director_data[:movies].length
  
  while movie_index < length_of_movie_list do
    gross_earnings += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  gross_earnings
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0
  
  while director_index < nds.length do
  
  result[(nds[director_index][:name])] = gross_for_director(nds[director_index])
  
  director_index += 1
  end
  result
end

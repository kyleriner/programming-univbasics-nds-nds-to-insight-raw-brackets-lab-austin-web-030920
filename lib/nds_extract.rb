$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  total_grosses = {}
  director_index = 0
  tally = 0
  while director_index < nds.length do
    film_index = 0
    director = nds[director_index][:name]
    pp director
    while film_index < nds[director_index][:movies].length do
      tally = tally + nds[director_index][:movies][film_index][:worldwide_gross]
      film_index += 1
    end
    film_index = 0
    total_grosses[director:] = tally
    tally = 0
  end
end

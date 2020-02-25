$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

director_data = {:name=>"Stephen Spielberg",
  :movies=>
  [{:title=>"Jaws",
    :studio=>"Universal",
    :worldwide_gross=>260000000,
    :release_year=>1975},
    {:title=>"Close Encounters of the Third Kind",
    :studio=>"Columbia",
    :worldwide_gross=>135189114,
    :release_year=>1977},
    {:title=>"Raiders of the Lost Ark",
    :studio=>"Paramount",
    :worldwide_gross=>248159971,
    :release_year=>1981},
    {:title=>"E.T. the Extra-terrestrial",
    :studio=>"Universal",
    :worldwide_gross=>435110554,
    :release_year=>1982},
    {:title=>"Schindler's List",
    :studio=>"Universal",
    :worldwide_gross=>96898818,
    :release_year=>1993},
    {:title=>"Lincoln",
    :studio=>"Buena Vista",
    :worldwide_gross=>182207973,
    :release_year=>2012}]}
    
    
def gross_for_director(director_data)
  total = 0 
  
  column = 0 
    while column < director_data[:movies].length do
      total += director_data[:movies][column][:worldwide_gross]
      column += 1 
    end
    
    total

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  
  row = 0 
  
  while row < nds.length do
    
      result[nds[row][:name]] = gross_for_director(director_data)
     
    row += 1 
  end
  
  result
  
end

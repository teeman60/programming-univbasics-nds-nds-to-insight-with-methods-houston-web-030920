$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(nds, row)
  total = 0 
  
  row = 0 
  while row < nds.length do 
  column = 0 
    while column < nds[row][:movies].length do
      total += nds[row][:movies][column][:worldwide_gross]
      column += 1 
    end
    
    return total

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
  result = {}
  
  row = 0 
  
  while row < nds.length do
    
      result[nds[row][:name]] = gross_for_director(nds, row)
     
    row += 1 
  end
  
  result
  
end

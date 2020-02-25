$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  
  row = 0 
  
  while row < nds.length do
    column = 0 
    while column < nds[row][:movies].length do
      result[nds[row][:movies][:worldwide_gross]] = gross_for_director(director_data)
      column += 1 
    end
    row += 1 
  end
  
  result
  
end

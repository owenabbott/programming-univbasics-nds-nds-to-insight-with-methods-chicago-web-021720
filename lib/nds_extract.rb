$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  money = 0
  for i in director_data[:movies]
    money += i[:worldwide_gross]
  end
  return money
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  counter = 0
    for i in nds
    result = {nds[counter] => gross_for_director(nds[counter])}
  end
  return result
end

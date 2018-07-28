require_relative '../config/environment.rb'
require'pry'
def reload
  load 'config/environment.rb'
end


casey = Artist.new("Casey", 8)
adam = Artist.new("Adam", 12)
louis = Artist.new("Louis", 18)


wework = Gallery.new("WeWork", "London")
starbucks = Gallery.new("Starbucks", "Leicester")

mona = Painting.new("Mona", "abstract", wework, casey)
lisa = Painting.new("lisa", "finger", starbucks, casey)
scream = Painting.new("Scream", "impressionist", wework, louis)


binding.pry

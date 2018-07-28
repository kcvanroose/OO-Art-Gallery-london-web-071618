class Artist

  attr_reader :name, :title, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    paintings = Painting.all.select{|painting|painting.artist == self}
    paintings.map{|titles| titles.title}
  end

  def galleries
    paintings = Painting.all.select{|painting| painting.artist == self}
    paintings.map{|gallery| gallery.gallery.city}
  end

  def self.average_years
    years = all.map{|artist| artist.years_active}
    years.inject { |sum, el| sum + el } / years.size 
  end

end

class Gallery

  attr_reader :name, :city, :years_active

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities
    all.map{|gallery| gallery.city}
  end

  def self.which_artists(gallery)
    locations = Painting.all.select{|painting| painting.gallery == gallery}
    locations.map{|place| place.artist.name}
  end

  def self.ave_exp(gallery)
    locations = Painting.all.select{|painting| painting.gallery == gallery}
    years = locations.map{|place| place.artist.years_active}
    years.inject { |sum, el| sum + el } / years.size
  end


end

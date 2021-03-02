require_relative '../environment.rb'

class Beach
  attr_reader :beach, :island, :shore, :temp, :weather, :wind, :surf
  
  @@all = []

  def initialize(seaside, isle, coast, temperature, climate, breeze, swell )
    @beach = seaside
    @island = isle
    @shore = coast
    @temp = temperature
    @weather = climate
    @wind = breeze
    @surf = swell
    @@all << self
  end

  def self.all
    @@all
  end


end
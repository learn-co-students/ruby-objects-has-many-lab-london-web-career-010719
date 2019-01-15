require_relative 'artist.rb'

class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
  #   if self.artist
  #     self.artist.name
  #   elsif !self.artist
  #     nil
  #   end
  return self.artist.name if self.artist != nil
end




end

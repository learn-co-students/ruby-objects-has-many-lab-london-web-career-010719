class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song| # select {|item| block} ==> Returns a new array containing all elements of ary for which the given block returns a true value.
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
    songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    songs << song
  end

  def self.song_count
    Song.all.count
  end

end

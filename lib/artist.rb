require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []


  def initialize(name)
    @name = name
    @songs = []

    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    self.add_song(Song.new(name))
  end

  def self.all
    @@all
  end

  def self.song_count
    @@all.inject(0) { |track_count, artist| track_count + artist.songs.length }
  end

end

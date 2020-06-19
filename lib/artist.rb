require_relative 'song.rb'

class Artist

  attr_accessor :name
  attr_accessor :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    name = Song.new(name)
    name.artist = self
    @songs << name
  end

  def self.song_count
    Song.all.length
  end







end

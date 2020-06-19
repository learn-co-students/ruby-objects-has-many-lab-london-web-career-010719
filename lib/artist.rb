require "pry"

class Artist


attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end


  def songs
    @songs
  end

  def songs=(songs)
    @songs = songs
  end


  def add_song(new_song)
    new_song.artist = self
    @songs << new_song
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    add_song(new_song)
  end

  def self.song_count
    Song.all.length
  end


end

require 'pry'

class Artist

  attr_accessor :name, :songs, :artist, :song

  @@all = []

def initialize(name)
  @name = name
  @songs = []
end

def self.all
  @@all << self
end

def add_song(new_song)
new_song.artist = self
@songs << new_song
end

def add_song_by_name(song)
  new_song = Song.new(song)
  add_song(new_song)
end

def self.song_count
Song.all.count
end





end



























#

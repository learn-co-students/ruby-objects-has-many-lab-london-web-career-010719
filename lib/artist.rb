require_relative '../lib/song.rb'

class Artist

    attr_accessor :name
    @@all = []
    def initialize(name)

    @name = name
    @songs = []

    end

    def songs
       @songs
    end

    def add_song(song)

        @songs << song
        song.artist = self
        @@all << self
    end

    def add_song_by_name(song_name)

      song = Song.new(song_name)
      add_song(song)
    end

    def self.song_count

      @@all.length

    end

end

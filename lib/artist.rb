class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize (name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    @songs << Song.new(name)
    @songs.last.artist = self
  end

  def self.song_count
    counter = 0
    @@all.each do |artist|
      artist.songs.each do |song|
        counter +=1
      end
    end
    counter
  end

end

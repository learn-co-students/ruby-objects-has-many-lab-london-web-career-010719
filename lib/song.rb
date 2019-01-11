class Song

attr_accessor :artist
attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end


    def self.all
        @@all
    end


    def artist_name

      if !self.artist
        return nil
      end
         self.artist.name
    end

end

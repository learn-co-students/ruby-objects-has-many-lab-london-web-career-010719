class Post
  attr_accessor :name, :author, :title

  @@all = []
  def initialize(name)
    @title = name
    @@all << self
  end

  def self.all
    @@all
  end
  def author_name
    return nil if !self.author
    self.author.name
  end
end

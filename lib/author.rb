require 'pry'
class Author

  attr_accessor :name, :posts

  @@all = []

  def initialize (name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post (post)
    @posts << post
    @posts.last.author = self
  end

  def add_post_by_title(title)
    @posts << Post.new(title)
    @posts.last.author = self
    #binding.pry
  end

  def self.post_count
    counter = 0
    @@all.each {|author| counter += author.posts.length}
    return counter
  end

end

require 'pry'
require_relative 'post.rb'

class Author
  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []

    @@all << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    @@all.inject(0) do |count, author|
      count += author.posts.length
    end
  end

end

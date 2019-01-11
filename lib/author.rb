

class Author

  attr_accessor :name, :author

@@all = []

def initialize(name)
  @name = name
  @@all << self
  @posts = []
end

def self.all
  @@all
end

def posts
  @posts
end

def add_post(new_post)
new_post.author = self
@posts << new_post
end

def add_post_by_title(post_title)
  new_post = Post.new(post_title)
  add_post(new_post)
end

def self.post_count
  Post.all.count
end


end

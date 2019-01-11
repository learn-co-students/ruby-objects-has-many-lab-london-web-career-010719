

class Post

  attr_accessor :name, :author, :title

@@all = []

def initialize(title)
@title = title
@@all << self
end

def self.all
  @@all
end

def author_name
return self.author.name if self.author != nil
end



end

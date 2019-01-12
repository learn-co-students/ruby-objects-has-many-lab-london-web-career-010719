class Author #parent to post class - has many posts

attr_accessor :name, :posts


    def initialize(name)
      @name = name
      @posts = []
    end


    def add_post(new_post)
      new_post.author = self
      @posts << new_post
    end

    def add_post_by_title(title)
      new_post = Post.new(title)
      add_post(new_post)
    end

    def self.post_count
      Post.all.length
    end


end

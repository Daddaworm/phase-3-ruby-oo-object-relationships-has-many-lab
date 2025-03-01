require 'pry'

class Author
    attr_accessor :name, :title


    def initialize(name)
        @name = name
    end
    

    def posts 
        Post.all.select do |post|
            post.author == self
        end
    end


    def add_post(post)
        post.author = self
        # binding.pry
    end


    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
        # binding.pry
    end


    def self.post_count
        Post.all.count
    end

    
end
require 'pry'

class Post
    attr_accessor :title, :author


    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end


    def self.all
        @@all
    end


    def author_name
        author ? author.name : nil
        #  binding.pry
    end

end
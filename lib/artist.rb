require "pry"

class Artist
    attr_accessor :name, :artist

    
    def initialize(name)
        @name = name
    end


    def songs
        Song.all.select do |song|
            song.artist == self
        # binding.pry
        end
    end


    def add_song(song)
        song.artist = self
        # binding.pry
    end


    def add_song_by_name(song)
        song = Song.new(song)
        song.artist = self
        # binding.pry
    end


    def self.song_count
        Song.all.size
    end


end
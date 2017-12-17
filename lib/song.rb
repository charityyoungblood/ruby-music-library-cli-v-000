require 'pry'

# create class Song
class Song 
# create attr_accessor for name
  attr_accessor :name 
  attr_reader :artist 
# create @@all = [] - class variable
  @@all = []
# create initialize method w/argument (name)
  def initialize(name, artist = nil) # second default argument 
    @name = name
    @artist = artist
  end 

# create class methods for:
    # - self.all
  def self.all 
    # - this method will return contents of @@all array
    @@all
  end 
    # - self.destroy_all 
  def self.destroy_all
    # - set @@all to an empty array
    @@all = []
  end
  
  def artist=(artist)
    @artist = artist
    Artist.add_song(artist)
# create save instance method
  def save 
#  # - this method will add Song instances to the @@all array
    @@all << self 
  end 
# create self.create class method 
  def self.create(name)
  # - this will initialize a new song and save the song in the @@all array 
    song = Song.new(name)
    @@all << song
    song
  end 
end 
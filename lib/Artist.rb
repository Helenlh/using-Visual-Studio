class Artist 
  attr_accessor :name
   @@all = [] 
  extend Concerns::Findable
  
  
  def initialize(name)
    @name = name
    @songs = []  
  end


  def name 
    @name
  end 
  
  
  def name=(name)
    @name = name 
  end
  
  
  def self.all 
    @@all
  end 
  
  
  def self.destroy_all 
    @@all = []
  end 
  
  
  def save 
   @@all << self 
  end 
  
  
  def self.create(name)
    new_artist = self.new(name)
    new_artist.save 
    new_artist 
  end
  
  
  
  def songs 
    @songs 
  end 
  
  
  
  def add_song(song)
    binding.pry 
    @songs << song
    Artist.songs << song
  end 
  
 
  
  def self.find_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end 
end 
#end of class


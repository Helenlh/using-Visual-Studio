require 'pry'

class Song
  @@all = []
   
   
   def initialize(name)
    @name = name 
    save 
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
      
      
  def save 
     @@all << self 
  end 
  
  
  def self.create(name)
    self.new(name) 
    return Song
  end 
  
  
  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")[1] 
    artist_one = file_name.split(" - ") 
    new_song = Song.new(song_name)
    new_song.artist_name=(artist_one)
    new_song
  end
  
  def artist_name=(name) 
      self.artist = Artist.find_or_create_by_name(name)
  end 
  
  
  def self.destroy_all
    @@all = []
  end 
end 
      
      
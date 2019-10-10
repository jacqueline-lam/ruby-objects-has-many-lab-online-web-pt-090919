class Song
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def artist_name 
    if self.artist                
      self.artist.name #self is Song instnace - "Survivor" 
      #self #=> #<Song:0x0000000001bca240 @artist=#<Artist:0x0000000001bc9de0 @name="Drake">,@name="Survivor">
    else
      #return nil if song doesn't have artist
      self.artist 
    end
  end
  
end


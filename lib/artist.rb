class Artist
  
  attr_accessor :name
  
  def initialize(name) 
    @name = name
  end
  
  def songs #has many songs
    #Song.all = array of all songs
    Song.all.select {|song| song.artist == self}
  end  
  
  # takes argument of song and associates that song w/ artist 
  # tell the song that it belongs to that artist
  def add_song(song)
    song.artist = self  #instead of @songs << song
  
    #  - TEST -
    #   hello = Song.new("Hello")
    #   adele.add_song(hello)
    #   expect(adele.songs).to include(hello)
    #   expect(hello.artist).to eq(adele)  
  end
  
  # takes in arg of song name
  # creates a new song with it and associates song and artist
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  
    # -TEST-
    #   adele.add_song_by_name("Rolling in the Deep")
    #   expect(adele.songs.last.name).to eq("Rolling in the Deep")
    #   expect(adele.songs.last.artist).to eq(adele)
  end
  
  # Class method - returns total # of songs 
  # associated to all existing artists 
  def self.song_count # self = Artist class
    Song.all.length
  end
  
end

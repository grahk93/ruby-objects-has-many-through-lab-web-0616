class Artist 
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song) #artist has many songs 
    @songs << song
    song.artist = self 
  end 

  def songs 
    @songs
  end 

  def genres #return artist object's genres through songs
    self.songs.collect do |song|
      song.genre
    end
  end
end
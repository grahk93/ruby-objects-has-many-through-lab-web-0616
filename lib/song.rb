class Song
  attr_accessor :artist, :genre, :name

  def initialize(name, genre_object) 
    @name = name
    @genre = genre_object
    genre_object.add_song(self) #genre has many songs
  end 

end
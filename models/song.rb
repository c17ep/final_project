class Song
  attr_accessor :name, :artist, :genre, :youtube_link

  ALL_SONGS = []

  def initialize(name, artist, genre, youtube_link)
    @name = name
    @artist = artist
    @genre = genre
    @youtube_link = youtube_link
    ALL_SONGS <<  self
  end


  def self.all
    ALL_SONGS
  end


end

first_song = Song.new("Hips Don't lie", "Shakira", "pop", "youtube.com")
Song.all
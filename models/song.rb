class Song
  attr_accessor :name, :artist, :mood, :youtube_link

  ALL_SONGS = []

  def initialize(name, artist, mood, youtube_link)
    @name = name
    @artist = artist
    @mood = mood
    @youtube_link = youtube_link
    ALL_SONGS <<  self
  end


  def self.all
    ALL_SONGS
  end


end


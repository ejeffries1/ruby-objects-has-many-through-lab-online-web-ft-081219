class Genre
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      song
    end
  end
  
  def artists
    songs.collect do |singer|
      singer.artist
    end
  end
end
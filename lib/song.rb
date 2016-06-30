class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    return_array = []

    @@artists.each do |artist|
      return_array << artist unless return_array.include? artist
    end

    return_array
  end

  def self.genres
    return_array = []
    
    @@genres.each do |genre|
      return_array << genre unless return_array.include? genre
    end

    return_array
  end

  def self.genre_count
    return_hash = {}

    @@genres.each do |genre|
      return_hash[genre] ||= 0
      return_hash[genre] += 1
    end
    
    return_hash
  end

  def self.artist_count
    return_hash = {}

    @@artists.each do |artist|
      return_hash[artist] ||= 0
      return_hash[artist] += 1
    end
    
    return_hash
  end


end
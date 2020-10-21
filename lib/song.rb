class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist
  @@genres << genre
end

def self.count
  return @@count
end

def self.genres
  return @@genres.uniq
end

def self.artists
  return @@artists.uniq
end

def self.genre_count
  genre_counter = {}
    @@genres.each do |genre|
      genre_counter[genre] = 1
    end
  return genre_counter
end

def self.artist_count

  return #hash similar to above
end

end

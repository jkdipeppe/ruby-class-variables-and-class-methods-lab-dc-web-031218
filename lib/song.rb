require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count = @@count + 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each do |curr_genre|
      if @@genre_count[curr_genre].nil?
        @@genre_count[curr_genre] = 1
      else
        @@genre_count[curr_genre] = @@genre_count[curr_genre] + 1
      end
    end

    @@genre_count
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if hash[artist].nil?
        hash[artist] = 1
      else
        hash[artist] = hash[artist] + 1
      end
    end
    hash
  end



end

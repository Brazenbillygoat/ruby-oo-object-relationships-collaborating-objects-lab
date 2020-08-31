require "pry"
require_relative "./song.rb"


class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  # def find_data_from_full_list()
  #   Song.all.select do |song|
  #     song.
  #   end
  # end

  def songs
    Song.all.select do |song|
      song.artist == self.name
    end
  end

  def add_song(song_obj)
    artist_songs = []
    binding.pry
    Song.all.each do |song|
      if self.name = song.artist
        artist_songs.push(song)
      end
    end
    binding.pry
    return artist_songs
  end

end
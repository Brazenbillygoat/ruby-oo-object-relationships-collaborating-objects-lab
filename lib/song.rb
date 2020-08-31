require_relative "./artist.rb"

class Song

  attr_accessor :name, :artist

  @@song_list = []

  def initialize(name)
    @name = name
    @@song_list.push(self)
  end

  def artist=(artist_obj)
    @artist = artist_obj.name
  end

  def self.all
    @@song_list
  end

end


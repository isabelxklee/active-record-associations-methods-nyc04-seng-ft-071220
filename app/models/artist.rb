class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.songs.first.genre
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.count
  end

  def genre_count
    #return the number of genres associated with the artist

    # iterate through all the song instances
    # only pick out the ones that are associated to this artist (self)
    # mutate the array to only be genres
    # call uniq on that array

    self.songs.map { |song| song.genre }.uniq.count

  end
end
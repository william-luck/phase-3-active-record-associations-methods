class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    names = []
    self.artists.each do |artist|
      names << artist.name
    end
    names

    # Great Job remembering how to do this and looping through an array. In my own words, this first creates an empty array. Then gets a list of all the artist instances within the class, loops through that, and pushes each artist name to the names array. At the end, then returns the array of artist names (last line is returned in Ruby)
  end
end

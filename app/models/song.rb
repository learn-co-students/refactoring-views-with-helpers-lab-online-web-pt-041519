class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name  #getter method
    artist.name unless artist.nil?
  end

  def artist_name=(name)  #setter method
    self.artist = Artist.find_or_create_by(name: name)
  end
end

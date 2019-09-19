class Song < ActiveRecord::Base
  belongs_to :artist


  #a reader, which turns the instance variable
  # into a method we can call anywhere in our program.
  def artist_name #reader
    self.artist.name if self.artist
  end

   def artist_name=(name) #writer
    self.artist = Artist.find_or_create_by(name: name)
  end
end

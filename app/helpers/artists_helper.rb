module ArtistsHelper

  def display_artist(song)
    if song.artist
      # Return link to artist show page
      link_to song.artist.name, artist_path(song.artist)
    else 
      # Return link "Add Artist" to song edit page
      link_to "Add Artist", edit_song_path(song)
    end 
  end

end

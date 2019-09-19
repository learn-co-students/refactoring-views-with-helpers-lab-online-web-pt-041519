module ArtistsHelper
  def display_artist(song)
      if song.artist
        #return a link to the artist's show page.
        # link_to  : https://mixandgo.com/learn/how-to-use-link_to-in-rails
        link_to song.artist.name, artist_path(song.artist)
      else
        #return a link to the song's edit page, with a link text of "Add Artist"
        link_to 'Add Artist', edit_song_path(song)
      end
  end
end

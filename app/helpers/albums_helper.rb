module AlbumsHelper

def join_tags(album)
  album.tags.map { |t| t.name }.join(", ")
end

end

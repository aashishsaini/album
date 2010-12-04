class PhotosController < ApplicationController
def create
  @album = Album.find(params[:album_id])
  @photo = @album.photos.create(params[:photo])
  redirect_to album_path(@album)
end

def destroy
  @album = Album.find(params[:album_id])
  @photo = @album.photos.find(params[:id])
  @photo.destroy
  redirect_to album_path(@album)
end



end

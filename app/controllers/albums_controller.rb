class AlbumsController < ApplicationController
    def index
        @albums = Album.all
    end

    def show
        @images = Image.where(:album_id => params[:id])
    end
end

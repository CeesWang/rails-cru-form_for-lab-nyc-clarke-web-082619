class ArtistsController < ApplicationController

    def new
        @artist = Artist.new 
    end

    def show
        @artist = Artist.find(params[:id]) 
    end

    def create
        redirect_to artist_path(Artist.create(artist_params))
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end

class SongsController < ApplicationController
    def show 
        @song = Song.find(params[:id])
    end

    def index 
        @songs = Song.all
    end

    def new 
        @song = Song.new
    end

    def create
        redirect_to song_path(Song.create(song_params))
    end

    def edit 
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params)
        redirect_to song_path(@song)
    end

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end

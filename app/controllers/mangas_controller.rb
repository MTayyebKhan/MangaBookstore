class MangasController < ApplicationController
    before_action :read_mangas, only: [:index]
    before_action :set_manga, only: [:show]
    def index
    end

    def show
    end

    def create

        writer_params = manga_params[:writer_attributes]
        if !writer_params[:first_name].empty? && !writer_params[:last_name].empty?
            @writer = Writer.create(writer_params)
        else
            @writer = Writer.find(manga_params[:writer])
        end

        manga = Manga.create(title: manga_params[:title], genre_ids: manga_params[:genres], writer: @writer)

        redirect_to manga_path(manga.id)
    end

    def new
        @manga = Manga.new
        @manga.build_writer
    end

    private
    def read_mangas
        @mangas = Manga.all
    end
    def set_manga
        if params[:id]
            @manga = Manga.find(params[:id])
        end
    end
    def manga_params
        params.require(:manga).permit(:title, :writer, genres: [], writer_attributes: [:first_name, :last_name])
    end
end

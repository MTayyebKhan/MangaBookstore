class MangasController < ApplicationController
    before_action :read_mangas, only: [:index]
    before_action :set_manga, only: [:show]
    def index
    end

    def show
    end

    def create
        writer = Writer.find_by_name(manga_params[:writer_first_name], manga_params[:writer_last_name])

        writer = writer || Writer.new(first_name: manga_params[:writer_first_name], last_name: manga_params[:writer_last_name])

        manga = Manga.create(title: manga_params[:title], genre: manga_params[:genre], writer: writer)

        redirect_to manga_path(book.id)
    end

    def new
        @manga = Manga.new
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
        params.require(:manga).permit(:title)
    end
end

class MangasController < ApplicationController
    before_action :read_mangas, only: [:index]
    before_action :set_manga, only: [:show]
    def index
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
end

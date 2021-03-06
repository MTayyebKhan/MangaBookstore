class MangasController < ApplicationController
    before_action :read_mangas, only: [:index]
    def index
    end

    private
    def read_mangas
        @mangas = Manga.all
    end
end

class WritersController < ApplicationController
    before_action :set_writer, only: [:show]
    before_action :read_writers, only: [:index]
    def index
    end

    def show
    end

    private
    def read_writers
        @writers = Writer.all
    end
    def set_writer
        if params[:id]
            @writer = Writer.find(params[:id])
        end
    end
end

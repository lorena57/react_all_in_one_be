class Api::V1::NotesController < ApplicationController

    def index
        @notes = Note.all
    end

    def create
        
    end

    def show
        
    end

    private

    def notes_params
        params.require.(:note).permit(:comments :user_id,) 
    end
end

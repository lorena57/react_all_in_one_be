class Api::V1::NotesController < ApplicationController

    def index
        notes = Note.all
        render json: notes
    end

    def create
        note = Note.new(notes_params) 
        if note.save
            render json: note, status: :accepted
        else
            render json: {errors: note.errors.full_messages}
        end    
    end

    def show
        note = Note.find(params[:id])
        render json: note 
    end

    private

    def notes_params
        params.require.(:note).permit(:comments :user_id,) 
    end
end

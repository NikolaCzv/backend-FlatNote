class NotesController < ApplicationController
    def index
        notes = Note.all
        render json: notes, include: :tags
    end

    def show
        note = Note.find(params[:id])

        render json: note, include: :tags
    end

    def create
        note = Note.create(title: params[:title], content: params[:content], user_id: params[:user_id])
        render json: note, include: :tags
    end

    def destroy
       note = Note.find(params[:id]).destroy

       render json: note
    end

    def edit
        note = Note.find(params[:id])

        render json: note, include: :tags
    end

    def update
        note = Note.find(params[:id])
        note.update(params.require(:note).permit(:title, :content))

        render json: note, include: :tags
    end


    
end

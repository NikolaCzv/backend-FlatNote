class TagNotesController < ApplicationController
    def index
        tag_notes = TagNotes.all
        render json: tag_notes
    end

    def create
        tag_note = TagNote.find_or_create_by(params[tag_id: params[:tag_id], note_id: params[:note_id]])
        render json: tag_note
    end

    def update
        tag_note = TagNote.find(params[:id])
        tag_note.update(params.require(:tag_note).permit(:tag_id, :note_id))

        render json: tag_note
    end


    def edit
        tag_note = TagNote.tag(params[:id])

        render json: tag_note
    end

end

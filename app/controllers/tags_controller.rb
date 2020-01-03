class TagsController < ApplicationController
    def index
        tags = Tag.all
        render json: tags
    end

    def create
        tag = Tag.find_or_create_by(params[name: params[:name]])
        render json: tag
    end

    def update
        tag = Tag.find(params[:id])
        tag.update(params.require(:tag).permit(:name))

        render json: tag
    end


    def edit
        tag = Note.tag(params[:id])

        render json: tag
    end
end

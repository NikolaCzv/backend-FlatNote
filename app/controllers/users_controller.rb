class UsersController < ApplicationController
    def index
        users = User.all
        render json: users.to_json(:include => {:notes => {include: :tags}})
    end

    def create
        user = User.find_or_create_by(username: params[:username])
        render json: user.to_json(:include => {:notes => {include: :tags}})
        # render json: user, include: :notes
    end
end

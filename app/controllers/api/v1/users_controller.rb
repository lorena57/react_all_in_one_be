class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.new(users_params) 
        if user.save
            render json: user, status: :accepted
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    private

    def users_params
        params.require.(:user).permit(:username) 
    end


end

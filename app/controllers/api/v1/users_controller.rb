class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
    end

    def create
        
    end

    def show
        
    end

    private

    def users_params
        params.require.(:user).permit(:username) 

    end


end

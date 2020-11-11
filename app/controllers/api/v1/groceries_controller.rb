class Api::V1::GroceriesController < ApplicationController

    def index
        @groceries = Grocery.all
    end

    def create
        
    end

    def show
        
    end

    private

    def groceries_params
        params.require.(:grocery).permit(:item, :qty, :user_id,) 
    end

end

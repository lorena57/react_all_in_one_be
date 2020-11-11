class Api::V1::GroceriesController < ApplicationController

    def index
        groceries = Grocery.all
        render json: groceries
    end

    def create
        grocery = Grocery.new(groceries_params) 
        if grocery.save
            render json: grocery, status: :accepted
        else
            render json: {errors: grocery.errors.full_messages}
        end      
    end

    def show
        grocery = Grocery.find(params[:id])
        render json: grocery 
    end

    private

    def groceries_params
        params.require.(:grocery).permit(:item, :qty, :user_id,) 
    end

end

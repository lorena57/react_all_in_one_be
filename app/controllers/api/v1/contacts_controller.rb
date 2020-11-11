class Api::V1::ContactsController < ApplicationController

    def index
        @contacts = Contact.all
    end

    def create
        
    end

    def show
        
    end

    private

    def contacts_params
       params.require.(:contact).permit(:first_name, :last_name, :phone_number, :email, :user_id,) 
    end

end

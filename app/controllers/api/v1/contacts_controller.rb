class Api::V1::ContactsController < ApplicationController

    def index
        contacts = Contact.all
        render json: contacts
    end

    def create
        contact = Contact.new(contacts_params) 
        if contact.save
            render json: contact, status: :accepted
        else
            render json: {errors: contact.errors.full_messages}
        end   
    end

    def show
        contact = Contact.find(params[:id])
        render json: contact 
    end

    private

    def contacts_params
       params.require.(:contact).permit(:first_name, :last_name, :phone_number, :email, :user_id,) 
    end

end

class ContactsController < ApplicationController
  def new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to @contact
    else
      render 'new'
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :address, :email, :phone)
    end
end

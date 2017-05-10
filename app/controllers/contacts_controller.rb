class ContactsController < ApplicationController
  before_action :find_contact, only: [:edit, :update, :show, :destroy]
  helper_method :sort_column, :sort_direction

  def index
    if current_user.nil?
      @contacts = []
    else
      @contacts = current_user.contacts.order(sort_column + " " + sort_direction)
    end
  end

  def new
    @contact = current_user.contacts.build
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to @contact
    else
      render 'edit'
    end
  end

  def create
    @contact = current_user.contacts.build(contact_params)
    if @contact.save
      redirect_to @contact
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    @contact.destroy
    redirect_to contacts_path
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :address, :email, :phone)
    end

    def find_contact
      @contact = Contact.find(params[:id])
    end

    def sort_column
      %w[name].include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end

class Api::V1::ContactsController < Api::V1::ApplicationController
  before_action :authenticate_user!
  before_action :set_contact, only: [:phones]

  # GET /api/v1/contacts/:id/phones
  def phones
    @contact = Contact.find(params[:id])
    @phones = @contact.phones
  end

  private

  def set_contact
    @contact = current_user.contacts.find(params[:id])
  end
end

class Api::V1::ExampleController < Api::V1::ApplicationController
  def index
    @contact = Contact.first

    # render json: {
    #   success: true,
    #   source: 'Api::V1::ExampleController',
    #   data: [1, 2, 3],
    #   contact: {
    #     name: contact.name,
    #     email: contact.email
    #   }
    # }
  end
end

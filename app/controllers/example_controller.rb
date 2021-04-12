class ExampleController < ActionController::API
  def index
    contact = Contact.first

    render json: {
      success: true,
      source: 'ExampleController',
      data: [1, 2, 3],
      contact: {
        name: contact.name,
        email: contact.email
      }
    }
  end
end

class Address < ApplicationRecord
  belongs_to :contact

  def full_address
    "#{street} - #{city} - #{state}"
  end
end

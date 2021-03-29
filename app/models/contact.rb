class Contact < ApplicationRecord
  belongs_to :kind
  belongs_to :company
  has_one :address
end

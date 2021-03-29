class Company < ApplicationRecord
  has_many :contacts
  has_many :phones, through: :contacts
  has_many :addresses, through: :contacts
end

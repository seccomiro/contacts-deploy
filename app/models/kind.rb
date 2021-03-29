class Kind < ApplicationRecord
  has_many :contacts
  # # OPTIONAL
  # has_many :phones, through: :contacts
  # has_many :addresses, through: :contacts

  def to_s
    description
  end
end

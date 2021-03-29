class Kind < ApplicationRecord
  has_many :contacts

  def to_s
    description
  end
end

class Cart < ApplicationRecord
  has_many :products
  has_one :user

end

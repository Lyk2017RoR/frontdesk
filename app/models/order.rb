class Order < ApplicationRecord
  belongs_to :user
  validates :address, :user, presence: true 
end

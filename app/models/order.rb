class Order < ApplicationRecord
  belongs_to :user
  validates :adress, :user, presence: true 
end

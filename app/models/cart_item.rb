# == Schema Information
#
# Table name: cart_items
#
#  id         :integer          not null, primary key
#  price      :integer
#  quantity   :integer
#  order_id   :integer
#  product_id :integer
#  cart_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CartItem < ApplicationRecord

  belongs_to :order
  belongs_to :product
  belongs_to :cart
  validates :quantity, presence: true
  
end

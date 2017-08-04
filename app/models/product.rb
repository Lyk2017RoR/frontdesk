class Product < ApplicationRecord
  has_and_belongs_to_many :tags, dependent: :destroy
  belongs_to :category
  belongs_to :brand
end

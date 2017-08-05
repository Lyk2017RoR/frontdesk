# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  content     :text
#  slug        :text
#  category_id :integer
#  brand_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  has_and_belongs_to_many :tags, dependent: :destroy, optional: true
  belongs_to :category
  belongs_to :brand

  validates :title, :content, presence:  true
  validate :slug_parameterize

  def slug_parameterize
    self.slug = title.parameterize
  end
end

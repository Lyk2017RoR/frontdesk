# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  has_many :products

  validates :title, presence:  true
  validate :slug_parameterize

  def slug_parameterize
    self.slug = title.parameterize
  end
end

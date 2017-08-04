# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  title      :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Brand < ApplicationRecord
  has_many :products

  validates :title, presence:  true
  validate :slug_parameterize

  def slug_parameterize
    self.slug = title.parameterize
  end
end

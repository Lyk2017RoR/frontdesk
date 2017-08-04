# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  content     :text
#  category_id :integer
#  brand_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

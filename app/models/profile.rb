# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  firstname  :string
#  lastname   :string
#  phone      :string
#  address    :string
#  birthday   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, presence: true

end

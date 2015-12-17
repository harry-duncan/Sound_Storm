# == Schema Information
#
# Table name: reposts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  track_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Repost < ActiveRecord::Base
	belongs_to :track
	belongs_to :user
	validates :track, :uniqueness => {:scope => :user_id}
end

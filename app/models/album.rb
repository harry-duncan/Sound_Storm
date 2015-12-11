# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :text
#  cover      :text
#  file       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ActiveRecord::Base
	has_many :tracks
end

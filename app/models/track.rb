# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  name       :text
#  file       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :integer
#  user_id    :integer
#

class Track < ActiveRecord::Base
	belongs_to :user
	belongs_to :album
	has_and_belongs_to_many :genres
	has_and_belongs_to_many :playlists
end

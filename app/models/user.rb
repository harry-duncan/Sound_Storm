# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  name             :text
#  email            :text
#  image            :text
#  bio              :text
#  social_facebook  :text
#  social_twitter   :text
#  social_instagram :text
#  artist           :boolean          default(FALSE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class User < ActiveRecord::Base
	has_secure_password
	has_many :playlists 
	has_many :tracks
	has_many :genres, :through => :tracks
	has_many :albums, :through => :tracks
	validates :email, :presence => true
	validates :name, :presence => true, :length => {:minimum => 2}
	validates :email, :presence => true, :uniqueness => true
end

something  
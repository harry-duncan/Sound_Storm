class RepostsController < ApplicationController
	def create
		repost = Repost.create(:user_id => @current_user.id, :track_id => params[:track_id])
		redirect_to :back
	end
		
	def index
		@reposts = @current_user.reposts
	end
end

class TracksController < ApplicationController
  
  def new
  	@track = Track.new
  end

  def create
  	track_details = track_params

  	req = Cloudinary::Uploader.upload params[:track][:file], :resource_type => :video
  	track_details[:file] = req["url"]

  	redirect_to @current_user
  end

  private
  def track_params
  	params.require(:track).permit(:name, :file)
  end
end

class TracksController < ApplicationController
  
  def new
  	@track = Track.new
  end

  def create
  	track_details = track_params

  	req = Cloudinary::Uploader.upload params[:user][:file]
  	track_details[:file] = req["url"]

  end

  private
  def track_params
  	params.require(:track).permit(:name, :file)
  end
end

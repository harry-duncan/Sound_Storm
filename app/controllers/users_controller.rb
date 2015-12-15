class UsersController < ApplicationController
  before_action :check_if_artist, :only => [:index] #this is where you add actions to admins
              #Can use this with :excpet => [:create, :new] also 
  before_action :check_if_logged_in, :only => [:edit, :update]
  def index
    @users = User.all.order(:name, :created_at).reverse
  end

  def new
  	@user = User.new
  end

  def create
  	user_details = user_params

    req = Cloudinary::Uploader.upload params[:file]
    user_details[:image] = req["url"]

    @user = User.new(user_details)
  	if @user.save
  		redirect_to(root_path)
  	else
  		render :new
	  end
	end

  def edit #this is to edit the profiles
    @user = @current_user
  end

  def update
    @user = @current_user
    user_details = user_params

    req = Cloudinary::Uploader.upload params[:file]
    user_details[:image] = req["url"]
    @user.update(user_details)

    redirect_to root_path
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email, :image, :bio, :social_facebook, :social_instagram, :social_twitter, :artist, :password, :password_confirmation)
  end

  def check_if_artist
    redirect_to root_path unless @current_user.present? && @current_user.artist?
  end

  # this is how i would add premium accounts and give them privialges

  def check_if_logged_in
    redirect_to root_path unless @current_user.present?
  end
end

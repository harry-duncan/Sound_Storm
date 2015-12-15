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

  def show
    @user = @current_user
  end

  def create
  	user_details = user_params

    if params[:file]
      req = Cloudinary::Uploader.upload params[:file]
      raise "hell"
      user_details[:image] = req["url"]
    else
      user_details[:image] = "https://socialbelly.com/assets/icons/blank_user-586bd979abac4d7c7007414f5e94fe71.png"
    end

    @user = User.new(user_details)
  	if @user.save
      session[:user_id] = @user.id
  		redirect_to(user_path(@user))
  	else
  		render :new
	  end
	end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user
    user_details = user_params

    if params[:file]
      req = Cloudinary::Uploader.upload params[:file]
      user_details[:image] = req["url"]
    end

    @user.update(user_details)

    redirect_to root_path, notice: "You have succesfully updated your picture"
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email, :image, :bio, :social_facebook, :social_instagram, :social_twitter, :artist, :password, :password_confirmation, :cover_photo)
  end

  def check_if_artist
    redirect_to root_path unless @current_user.present? && @current_user.artist?
  end

  # this is how i would add premium accounts and give them privialges

  def check_if_logged_in
    redirect_to root_path unless @current_user.present?
  end
end

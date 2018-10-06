class UsersController < ApplicationController

  def new
      @user = User.new
    end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to new_user_trip_path(@user)
    else
      flash[:notice] = "User creation failed. Please try again"
      redirect_to new_user_path
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @user = User.find(current_user.id)
    session.clear
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :password, :status, :role, :password_confirmation, :verification_code, :username)
  end

end





def self.strava_oauth2_call(params_code)
  response = Faraday.post("https://www.strava.com/oauth/token?client_id=#{ENV['STRAVA_ID']}&client_secret=#{ENV['STRAVA_SECRET']}&code=#{params_code}")
  @token = response.body.split(/\W+/)[2]
  oauth_response = Faraday.get("https://www.strava.com/api/v3/athlete?access_token=#{@token}")
  self.update_or_create(JSON.parse(oauth_response.body, symbolize_names: true))
end

def self.update_or_create(user_info)
  user = User.find_or_create_by(strava_id: user_info[:id]) do |user|
    user.strava_id =          user_info[:id]
    user.strava_username =    user_info[:username]
    user.first_name =         user_info[:firstname]
    user.last_name =          user_info[:lastname]
    user.email =              user_info[:email]
    user.premium_user =       user_info[:premium]
    user.num_of_followers =   user_info[:follower_count]
    user.friend_count =       user_info[:friend_count]
    user.date_format =        user_info[:date_preference]
    user.measure_format =     user_info[:measurement_preference]
    user.access_token =       @token
    #add in additional attributes as needed here =
    user.save
  end
end















.

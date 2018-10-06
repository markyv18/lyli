class Pro::UsersController < Pro::BaseController

  def index
    @users = User.all
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy
    # @user = User.find(xxxxxx.id)
    # session.clear
    # @user.destroy
    redirect_to admin_dashboard
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :phone, :password, :status, :role, :password_confirmation, :verification_code, :username)
    end
end

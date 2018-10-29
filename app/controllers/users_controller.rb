class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def edit
  end

  def new
    @roles = Role.all
  end

  def create
    @user = User.new(create_user_params)
    @user.save!
    redirect_to users_path
  end

  def update
  end

  private

    def create_user_params
      params.require(:user).permit(:email, :first_name, :last_name, :role_id, :password, :password_confirmation)
    end
end

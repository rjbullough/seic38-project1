class UsersController < ApplicationController
  before_action :check_for_login, :only => [:update, :edit]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    user = User.find @current_user.id
    user.update user_params
    if user.save
      flash[:message] = "Details updated"
    end
    redirect_to edit_user_path
  end

  def edit
    @user = User.find @current_user.id
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :gender, :height, :weight, :activity_level, :goal, :target_intake)
  end
end

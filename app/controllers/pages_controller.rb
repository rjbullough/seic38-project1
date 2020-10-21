class PagesController < ApplicationController
  
  def home
  end

  def show
    @user = User.find_by email: @current_user.email
  end
  
  def update
    @user = User.find_by email: @current_user.email
    @date = Date.parse(params[:date])
    render :update, :layout => false
  end

end

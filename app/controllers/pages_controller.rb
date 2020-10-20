class PagesController < ApplicationController
  
  def home
  end

  def show
    @user = User.find_by email: @current_user.email
  end

end

class PagesController < ApplicationController
  before_action :check_for_login, :only => [:show, :update]
  
  def home
  end

  def show
    @user = User.find_by email: @current_user.email
  end
  
  def update
    @date = Date.parse( params[:date] )
    @user = User.find_by email: @current_user.email
    
    render :update, :layout => false
  end

end

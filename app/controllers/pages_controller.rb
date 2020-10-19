class PagesController < ApplicationController
  def home
  end

  def today
    @user = User.find_by email: @current_user.email
    @intake_tally = @user.entries.todays_entries.map(&:energy).sum
  end

  def create
    @user = User.find_by email: @current_user.email

  end



end

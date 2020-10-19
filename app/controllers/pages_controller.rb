class PagesController < ApplicationController
  before_action :check_for_login
  def home
  end

  def today
    @user = User.find_by email: @current_user.email
    @intake_tally = @user.entries.todays_entries.map(&:energy).sum
  end



end

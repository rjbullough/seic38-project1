class EntriesController < ApplicationController
  before_action :check_for_login
  def new
    @item = Item.new
    @entry = Entry.new
  end

  def create
    @item = Item.create
  end

end
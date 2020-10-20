class EntriesController < ApplicationController

  def new
    @item = Item.new
    @entry = Entry.new
  end

  def create
    @entry = Entry.create
    @item = Item.create
  end

  def update
  end
  
  def edit
  end

end
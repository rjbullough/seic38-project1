class EntriesController < ApplicationController
  before_action :check_for_login
  
  def new
    @item = Item.new
    @entry = Entry.new
  end

  def create
    @entry = Entry.create entry_params
    @item = @entry.items.create item_params
    if @entry.save
      redirect_to today_path
    end
  end

  def update
  end
  
  def edit
  end

  private
    def entry_params
      params.require(:entry).permit(:user_id, :date, :items => [])
    end

    def item_params
      params.require(:items).permit(:protein, :fat, :carb, :name)
    end
end
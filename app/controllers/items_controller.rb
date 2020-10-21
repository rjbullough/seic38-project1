class ItemsController < ApplicationController
  
  def new
    @item = Item.new
    @entry = Entry.new
  end

  def create
    @entry = Entry.create entry_params
    @item = @entry.items.create item_params
    if @entry.save
      redirect_to edit_item_path(@item)
    end
  end

  def update
    @item = Item.find params[:id]
    @item.update item_params
    redirect_to today_path
  end

  def edit
    @item = Item.find params[:id]
  end

  def destroy
    item = Item.find params[:id]
    item.destroy
    redirect_to today_path
  end


  private
  def item_params
    params.require(:item).permit(:id, :name, :protein, :carb, :fat, :entry_id, :energy)
  end
  def entry_params
    params.require(:entry).permit(:user_id, :date, :items => [])
  end

end

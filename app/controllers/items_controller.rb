class ItemsController < ApplicationController
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.create item_params
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
    params.require(:item).permit(:id, :name, :protein, :carb, :fat, :entry_id)
  end

end

class ItemsController < ApplicationController
  before_action :find_item, only: [ :show, :edit, :update, :destroy ]
  before_action :item_locations, only: [ :new, :create ]

  def index
    @items = policy_scope(Item)
  end

  def show
    authorize @item
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    authorize @item
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
    authorize @item
  end

  def update
    authorize @item
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    authorize @item
    @item.destroy
    redirect_to items_path
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :location, :reference_number, :comments)
  end

  def item_locations
    @locations = [
      'Dining Room',
      'Hallway',
      'Main Entrance',
      'Bar',
      'Presentation room'
    ]
  end
end

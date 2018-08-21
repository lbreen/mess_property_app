class ItemsController < ApplicationController
  before_action :find_item, only: [ :show, :create, :edit, :update, :destroy ]

  def index
    @items = policy_scope(Item)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end
end

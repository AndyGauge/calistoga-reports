class StoresController < ApplicationController
  def new
    @store = Store.new
  end
  def index
    @stores = Store.all
  end
  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to :stores
    else
      render :new
    end
  end
  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to :stores
  end
  def store_params
    params.require(:store).permit(:name, :number)
  end
end

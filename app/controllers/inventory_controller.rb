class InventoryController < ApplicationController
  def index
  	if params[:name] != nil
  		params[:category] = params[:category].titleize
  		Product.create(name: params[:name], price: params[:price].to_f, category: params[:category])
  		@notice = "Product succesfully created."
  	end

  end

  def all_products
  	@products = Product.all
  end

  def one_product
  	@product = Product.find(params[:id])
  end

  def by_category
  	@products = Product.where(category: params[:cat])
  end
end




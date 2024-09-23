class ProductController < ApplicationController

	def create
		@product = Product.create(name: params[:name], price: params[:price], sales_count: params[:sales_count])
		if @product.save
			render json: @product, status: :ok
		else
			render json: { errors: 'product is not created'}, status: 422
		end
	end

	def index
		@products = Product.all
	end
end
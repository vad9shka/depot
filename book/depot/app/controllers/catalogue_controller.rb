class CatalogueController < ApplicationController
	def index
		@products = Product.all
	end

	def show_catalogue
      	@product = Product.find(params[:id])
	end
end

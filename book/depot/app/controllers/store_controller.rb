class StoreController < ApplicationController
  # В контроллере описываются операции над базой данных (над определенной таблицей)
  # а именно - что мы хотим получить из таблицы в БД для 
  # конкретных действий (action) методов
  def index
  	@products = Product.order(:title)
  	# либо можно писать так:
  	# @products = Product.all

  	@product_sum = Product.last #находит последнюю запись в таблице

  	#находит запись, соответствующую условию
  	@nice_price = Product.where("price > 50 AND price < 100") 
  	
  end

  def otherTemplate
    @products = Product.order(:title)
    # либо можно писать так:
    # @products = Product.all

    @product_sum = Product.last #находит последнюю запись в таблице

    #находит запись, соответствующую условию
    @nice_price = Product.where("price > 50 AND price < 100") 

    # render :template => "store/index"
    # render :action => "index"
    render :template => "products/index"
  end
end

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  	fixtures :products

  	# test 'product attributes must be not empty' do
  	# 	product = Product.new
  	# 	assert product.invalid?
  	# 	assert.product.errors[:title].any?
  	# 	assert.product.errors[:price].any?

  	# end

  	# test 'product price must be positive' do
  	# 	product = Product.new(title: 'Title', description: 'Description', image_url: 'image.jpg')
  	# 	product.price = -1
  	# 	assert product.invalid?
  	# 	assert_equal ['must be >= 0.01'], product.errors[:price]

  	# 	product.price = 1
  	# 	assert product.valid?

  	# end

  	test 'test fixtures' do
  		product = Product.new(title: products(:test).title, description: 'description', 
  			image_url: 'image.jpg', price: 35)
  		assert product.invalid?
  		assert_equal ['has already been taken'], product.errors[:title]
  	end
end

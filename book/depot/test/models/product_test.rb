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

  	#для запуска тестового окружения исп. RAILS_ENV=test rake db:migrate
    # rake test
  	test 'test fixtures' do
  		product = Product.new(title: products(:test).title, description: "something", 
  			image_url: "pic.jpg", price: 35)
  		# product.save
  		assert product.valid?, 'has already been taken' #значение будет валидно? -нет, значит тест не пройдет
  		# assert_equal ["has already been taken"], product.errors[:title] 
		# используется 2 массива на сравнение 2 значений  
		assert_equal [I18n.translate('activerecord.errors.messages.taken')], 
		product.errors[:title]
	
	end

  	test "simple test" do 
  		product = Product.new(title: "Book 1", description: "BookBook", 
  			image_url: "aa.jpg", price: -1)
  		actualProductPrice = 10
  		assert_equal product.price, actualProductPrice, ["greater than 0.01"]
  	end

  	test 'test' do
  		product = Product.new(title: products(:test).title, 
  			description: products(:test).description, 
  			image_url: products(:test).image_url, 
  			price: products(:test).price)

  		equalTitle = "title"
  		assert_equal product.title, equalTitle 
  	end	

  	test 'test db' do
  		product = Product.create(title: nil, description: nil, image_url: nil, price: nil)
  		assert product.valid?
  		product.errors.messages
  	end
end

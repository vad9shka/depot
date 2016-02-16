# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.delete_all # удаляет из БД все данные, созданные до этого

Product.create!(id: 1, title: 'Test Product', description: 
	%{Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diem 
  			nonummy nibh euismod tincidunt ut lacreet dolore magna aliguam erat volutpat.
  			Ut wisis enim ad minim veniam, quis nostrud exerci tution ullamcorper 
  			suscipit lobortis nisl ut aliquip ex ea commodo consequat.}, 
		image_url: 'ruby_new.jpg', price: 100.00)

Product.create!(id: 2, title: 'Test Product 2', description: 
	%{Lorem ipsum dolor sit amet, consectetuer adipiscing elit},
	image_url: 'ruby.jpg', price: 95.00)



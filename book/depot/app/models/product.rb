class Product < ActiveRecord::Base

	# описание всего того, что касается БД таблицы Product - проверка на валидность строк 
	# и т.п. 
	validates :title, :description, :image_url, presence: true
	validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }
	validates :title, uniqueness: true #проверка на уникальность (совпадение)
	validates :image_url, format: { 
		with: %r{\.(gif|jpg|png)\Z}i, message: 'URL должен быть gif, jpg или png формата'
	}


end

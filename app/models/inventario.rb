class Inventario < ActiveRecord::Base
	validates :numSerie, 
	          :uniqueness => true, 
	          :allow_nil => false 
end

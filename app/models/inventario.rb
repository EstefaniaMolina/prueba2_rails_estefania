class Inventario < ActiveRecord::Base
	validates :numSerie, 
	          :uniqueness => true, 
	          :allow_nil => false 
	belongs_to :operacion
end

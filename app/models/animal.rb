class Animal < ApplicationRecord
	belongs_to :animal_type

	scope :changos,-> { 
		joins(:animal_type).
		where('animal_types.nombre = ?', 'Chango') 
	}
	scope :tipo, ->(tipo){
		joins(:animal_type).
		where(animal_types: {nombre: tipo})
	}
	scope :cincoUltimos,-> { 
		order('id desc').limit(5)
	}

	def self.changos2
		joins(:animal_type).
		where('animal_types.nombre = ?', 'Chango') 
	end

	def self.tipo2(tipo)
		joins(:animal_type).
		where(animal_types: {nombre: tipo})
	end

	def self.cincoUltimos2
		order('id desc').limit(5)
	end


end

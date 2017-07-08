class AnimalType < ApplicationRecord
	has_many :animal
	validates :nombre, presence: true
end

class Entity < ActiveRecord::Base
	self.primary_key = :Id_Entidad
	has_many :clients, foreign_key: 'Id_Entidad'
end

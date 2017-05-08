class Client < ActiveRecord::Base
	self.primary_key = :Id_Cliente
	belongs_to :entity
end

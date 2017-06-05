class Client < ActiveRecord::Base
	self.primary_key = :Id_Cliente
	belongs_to :entity
	has_many :bills, foreign_key: 'Id_Cliente'
end

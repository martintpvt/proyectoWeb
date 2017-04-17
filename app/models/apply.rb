require 'rubygems'
require 'composite_primary_keys'

class Apply < ApplicationRecord
	self.primary_keys = :Id_Entidad, :Id_Impuesto
	belongs_to :entity
	belongs_to :tax
end

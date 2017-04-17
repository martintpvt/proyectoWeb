require 'rubygems'
require 'composite_primary_keys'

class Retain < ActiveRecord::Base
	self.primary_keys = :Id_Factura, :Id_Retencion
	belongs_to :bill
	belongs_to :retention
end

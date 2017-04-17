require 'rubygems'
require 'composite_primary_keys'

class Retain < ApplicationRecord
	self.primary_keys :Id_Factura, :Id_Retencion
end

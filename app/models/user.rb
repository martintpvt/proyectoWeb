class User < ApplicationRecord
	has_secure_password

	def nombre_completo
		"#{name} #{lastname}"
	end
end

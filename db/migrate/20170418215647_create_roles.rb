class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles, id: false do |t|
      t.primary_key :Id_Rol
      t.string :NombreRol, :null => false

      t.timestamps
    end
  end
end

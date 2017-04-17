class CreateEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :entities, id: false do |t|
      t.primary_key :Id_Entidad
      t.integer :Id_Usuario, :null => false
      t.string :Identificacion, :null => false
      t.string :Nombre, :null => false
      t.string :Telefono, :null => false
      t.string :Direccion, :null => false
      t.string :Email, :null => false

      t.timestamps
    end
  end
end

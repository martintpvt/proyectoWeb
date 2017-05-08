class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients, id: false do |t|
      t.primary_key :Id_Cliente
      t.integer :Id_Entidad, :null => false
      t.string :Identificacion, :null => false
      t.string :Nombre, :null => false
      t.string :Telefono, :null => false
      t.string :Direccion, :null => false
      t.string :Email, :null => false

      t.timestamps
    end
  end
end

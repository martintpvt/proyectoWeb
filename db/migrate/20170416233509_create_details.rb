class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details, id: false do |t|
      t.primary_key :Id_Detalle
      t.integer :Id_Factura, :null => false
      t.string :Descripcion, :null => false
      t.float :ValorUnitario, :null => false
      t.integer :Cantidad, :null => false

      t.timestamps
    end
  end
end

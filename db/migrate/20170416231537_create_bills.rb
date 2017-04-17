class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills, id: false do |t|
      t.primary_key :Id_Factura
      t.integer :Id_Entidad, :null => false
      t.integer :Id_Cliente, :null => false
      t.string :NumeroFactura, :null => false
      t.date :FechaEmision, :null => false
      t.boolean :EmitidaRecibida, :null => false
      t.boolean :IncluyeIva, :null => false
      t.float :Descuento, :null => false

      t.timestamps
    end
  end
end

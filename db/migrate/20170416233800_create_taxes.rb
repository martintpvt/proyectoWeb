class CreateTaxes < ActiveRecord::Migration[5.0]
  def change
    create_table :taxes, id: false do |t|
      t.primary_key :Id_Impuesto
      t.string :NombreImpuesto, :null => false
      t.float :PorcentajeImpuesto, :null => false

      t.timestamps
    end
  end
end

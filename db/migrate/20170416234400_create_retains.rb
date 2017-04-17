class CreateRetains < ActiveRecord::Migration[5.0]
  def change
    create_table :retains, id: false do |t|
      t.integer :Id_Factura, :null => false
      t.integer :Id_Retencion, :null => false
      t.float :PorcentajeRetencion, :null => false

      t.timestamps
    end

    execute "alter table retains add primary key(Id_Factura, Id_Retencion)"
  end
end

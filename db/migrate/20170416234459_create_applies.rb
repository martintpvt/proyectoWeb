class CreateApplies < ActiveRecord::Migration[5.0]
  def change
    create_table :applies, id: false do |t|
      t.integer :Id_Entidad, :null => false
      t.integer :Id_Impuesto, :null => false

      t.timestamps
    end

    execute "alter table applies add primary key(Id_Entidad, Id_Impuesto)"
  end
end

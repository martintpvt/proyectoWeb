class CreateRetentions < ActiveRecord::Migration[5.0]
  def change
    create_table :retentions, id: false do |t|
      t.primary_key :Id_Retencion
      t.string :NumeroRetencion, :null => false

      t.timestamps
    end
  end
end

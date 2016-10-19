class CreateTransacciones < ActiveRecord::Migration[5.0]
  def change
    create_table :transacciones do |t|
      t.integer :cuenta_id
      t.text :descripcion
      t.integer :monto
      t.boolean :instruccion

      t.timestamps
    end
  end
end

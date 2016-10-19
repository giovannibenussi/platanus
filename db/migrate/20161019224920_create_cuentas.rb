class CreateCuentas < ActiveRecord::Migration[5.0]
  def change
    create_table :cuentas do |t|
      t.string :direccion, limit: 44
      t.integer :saldo

      t.timestamps
    end
  end
end

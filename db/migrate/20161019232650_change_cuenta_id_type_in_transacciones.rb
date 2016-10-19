class ChangeCuentaIdTypeInTransacciones < ActiveRecord::Migration[5.0]
    def change
        def up
            change_column :transacciones, :cuenta_id, :string
        end

        def down
            change_column :transacciones, :cuenta_id, :integer
        end
    end
end

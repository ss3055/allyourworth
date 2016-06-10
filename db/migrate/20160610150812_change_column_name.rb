class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :spends, :transaction, :trans
  end
end

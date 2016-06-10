class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.float :savings
      t.float :wants
      t.float :needs
      t.float :income
      t.integer :user_id

      t.timestamps

    end
  end
end

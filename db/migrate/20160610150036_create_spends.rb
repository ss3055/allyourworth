class CreateSpends < ActiveRecord::Migration
  def change
    create_table :spends do |t|
      t.string :classification
      t.integer :user_id
      t.string :notes
      t.string :labels
      t.string :account_name
      t.string :category
      t.string :transaction
      t.float :amount
      t.string :original_description
      t.string :description
      t.date :date

      t.timestamps

    end
  end
end

class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :wallet, null: false, foreign_key: true
      t.string :transaction_type
      t.float :amount
      t.string :transaction_desc

      t.timestamps
    end
  end
end

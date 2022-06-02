class CreateAccountTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :account_transactions do |t|
      t.decimal :amount
      t.string :transaction_type
      t.integer :bank_account_id
      t.string :transaction_number

      t.timestamps
    end
  end
end

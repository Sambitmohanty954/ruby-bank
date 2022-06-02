class CreateBankAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_accounts do |t|
      t.string :account_number
      t.decimal :balance
      t.integer :user_id

      t.timestamps
    end
  end
end

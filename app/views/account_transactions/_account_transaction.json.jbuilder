json.extract! account_transaction, :id, :amount, :transaction_type, :bank_account_id, :transaction_number, :created_at, :updated_at
json.url account_transaction_url(account_transaction, format: :json)

json.extract! account, :id, :person_id, :user_id, :amount, :description, :created_at, :updated_at
json.url account_url(account, format: :json)

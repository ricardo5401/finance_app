json.extract! activity, :id, :account_id, :user_id, :description, :amount, :created_at, :updated_at
json.url activity_url(activity, format: :json)

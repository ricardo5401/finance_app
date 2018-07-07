json.extract! person, :id, :name, :last_name, :phone, :user_id, :address, :email, :created_at, :updated_at
json.url person_url(person, format: :json)

json.extract! new_model, :id, :description, :email_address, :created_at, :updated_at
json.url new_model_url(new_model, format: :json)

json.extract! author, :id, :first_name, :last_name, :email_address, :user_id, :created_at, :updated_at
json.url author_url(author, format: :json)

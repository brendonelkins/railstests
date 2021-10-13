json.extract! recipe, :id, :recipe_name, :difficulty, :comment, :author_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)

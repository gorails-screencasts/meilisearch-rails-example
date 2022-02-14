json.extract! restaurant, :id, :name, :cuisine, :description, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)

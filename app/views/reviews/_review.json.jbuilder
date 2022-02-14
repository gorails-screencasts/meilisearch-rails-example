json.extract! review, :id, :restaurant_id, :body, :created_at, :updated_at
json.url review_url(review, format: :json)

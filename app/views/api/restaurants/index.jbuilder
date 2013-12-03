json.array! @restaurants do |restaurant|
  json.(restaurant, :name, :created_at, :updated_at)
  json.url restaurant_url(restaurant)
end
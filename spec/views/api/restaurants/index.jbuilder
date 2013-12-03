json.array! @restaurants do |restaurant|
  json.(restaurant, :name, :created_at, :updated_at)
end
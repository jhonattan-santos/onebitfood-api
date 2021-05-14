json.array! @categories do |category|
  json.id category.id
  json.title category.title
  json.image_url polymorphic_url(category.image) if category.image.attached?
end

# [
#   {
#     'id': 1,
#     'title': 'any title',
#     'image_url': 'http://localhost:3000/asdf.jpg'
#   },
# ]

json.extract! text_image, :id, :image, :content, :created_at, :updated_at
json.url text_image_url(text_image, format: :json)
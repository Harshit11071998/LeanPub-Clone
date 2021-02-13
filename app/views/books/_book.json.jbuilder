json.extract! book, :id, :title, :author_price, :selling_price, :book_index, :about, :book_category, :youtube_link, :retired, :published, :user_id, :created_at, :updated_at
json.url book_url(book, format: :json)

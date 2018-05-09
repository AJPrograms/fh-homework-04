json.extract! book, :id, :title, :author, :classification, :genre, :book_type, :year, :created_at, :updated_at
json.url book_url(book, format: :json)

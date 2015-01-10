json.array!(@entries) do |entry|
  json.extract! entry, :id, :author, :photo_url, :date_taken
  json.url entry_url(entry, format: :json)
end

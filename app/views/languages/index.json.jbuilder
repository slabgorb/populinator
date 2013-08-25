json.array!(@languages) do |language|
  json.extract! language, :lookback, :description
  json.url language_url(language, format: :json)
end

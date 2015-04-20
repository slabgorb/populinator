json.array!(@corpora) do |corpus|
  json.extract! corpus, :language_id, :name, :url
  json.url corpus_url(corpus, format: :json)
end

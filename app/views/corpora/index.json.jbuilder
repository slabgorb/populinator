json.array!(@corpora) do |corpus|
  json.extract! corpus, :name, :url
  json.url corpus_url(corpus, format: :json)
end

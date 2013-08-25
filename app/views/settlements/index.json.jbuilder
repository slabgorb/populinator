json.array!(@settlements) do |settlement|
  json.extract! settlement, :icon, :color, :name, :language_id, :ancestry
  json.url settlement_url(settlement, format: :json)
end

json.array!(@beings) do |being|
  json.extract! being, :surname, :given_name, :age, :alive, :title, :gender, :ancestry
  json.url being_url(being, format: :json)
end

json.array!(@rooms) do |room|
  json.extract! room, :id, :suite_number, :resident, :owner_email
  json.url room_url(room, format: :json)
end

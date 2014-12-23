json.array!(@spaces) do |space|
  json.extract! space, :id, :name, :capacity
  json.url space_url(space, format: :json)
end

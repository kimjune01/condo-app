json.array!(@devices) do |device|
  json.extract! device, :id, :endpoint_arn, :resident, :active_status
  json.url device_url(device, format: :json)
end

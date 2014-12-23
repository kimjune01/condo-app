json.array!(@mailboxes) do |mailbox|
  json.extract! mailbox, :id, :box_number
  json.url mailbox_url(mailbox, format: :json)
end

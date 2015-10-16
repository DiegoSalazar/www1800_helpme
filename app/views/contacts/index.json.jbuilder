json.array!(@contacts) do |contact|
  json.extract! contact, :id, :user_id, :verbal_name, :first_name, :middle_name, :last_name, :phone, :import_source
  json.url contact_url(contact, format: :json)
end

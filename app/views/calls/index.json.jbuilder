json.array!(@calls) do |call|
  json.extract! call, :id, :called, :from, :direction, :status, :recording_url, :recording_duration, :call_sid, :account_sid, :from_zip, :from_city, :from_state, :from_country, :meta
  json.url call_url(call, format: :json)
end

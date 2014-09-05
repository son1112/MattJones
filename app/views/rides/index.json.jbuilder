json.array!(@rides) do |ride|
  json.extract! ride, :id, :roundtrip, :time_start, :time_end
  json.url ride_url(ride, format: :json)
end

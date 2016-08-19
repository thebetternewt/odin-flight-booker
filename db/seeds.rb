10.times do
  code = ""
  3.times { code << (65 + rand(26)).chr }
  Airport.create!(code: code)
end

100.times do
  from_airport_id = rand(10) + 1
  to_airport_id = rand(10) + 1
  while (to_airport_id == from_airport_id) do
    to_airport_id = rand(10) + 1
  end
  departs_at = Faker::Time.forward(90)
  duration_in_hours = rand(81)/10.0
  Flight.create!(
    from_airport_id: from_airport_id,
    to_airport_id: to_airport_id,
    departs_at: departs_at,
    duration_in_hours: duration_in_hours
  )
end

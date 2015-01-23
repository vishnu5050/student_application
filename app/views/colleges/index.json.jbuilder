json.array!(@colleges) do |college|
  json.extract! college, :id, :name, :country, :min_sat_score, :tution_fee
  json.url college_url(college, format: :json)
end

json.array!(@mentors) do |mentor|
  json.extract! mentor, :id, :name, :age, :gender, :dob, :bio, :country
  json.url mentor_url(mentor, format: :json)
end

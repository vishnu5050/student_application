json.array!(@coll_applications) do |coll_application|
  json.extract! coll_application, :id, :student_id, :college_id
  json.url coll_application_url(coll_application, format: :json)
end

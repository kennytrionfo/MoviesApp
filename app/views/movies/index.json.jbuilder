json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :date, :place
  json.url movie_url(movie, format: :json)
end

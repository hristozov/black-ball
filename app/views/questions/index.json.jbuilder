json.array!(@questions) do |question|
  json.extract! question, :id, :text, :answer
  json.url question_url(question, format: :json)
end

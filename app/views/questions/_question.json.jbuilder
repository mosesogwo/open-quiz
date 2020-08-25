json.extract! question, :id, :is_active, :quiz_id, :created_at, :updated_at
json.url question_url(question, format: :json)

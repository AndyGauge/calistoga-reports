json.extract! covid_question, :id, :temperature, :travel, :contact, :symptoms, :name, :store_id, :created_at, :updated_at
json.url covid_question_url(covid_question, format: :json)

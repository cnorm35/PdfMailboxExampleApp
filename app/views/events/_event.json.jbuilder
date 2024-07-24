json.extract! event, :id, :start_time, :title, :description, :link, :location, :created_at, :updated_at
json.url event_url(event, format: :json)

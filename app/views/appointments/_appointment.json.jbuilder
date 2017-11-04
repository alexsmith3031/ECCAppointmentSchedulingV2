json.extract! appointment, :id, :appDate, :description, :customer_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)

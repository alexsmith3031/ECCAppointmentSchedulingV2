json.extract! customer, :id, :firstName, :middleInitial, :lastName, :email, :phone, :created_at, :updated_at
json.url customer_url(customer, format: :json)

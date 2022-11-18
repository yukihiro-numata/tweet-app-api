class Root < Grape::API
  format :json

  rescue_from ActiveRecord::RecordNotFound do |e|
    rack_response({ message: e.message, status: 404 }.to_json, 404)
  end

  mount Resources::Users
  mount Resources::Cafes
end

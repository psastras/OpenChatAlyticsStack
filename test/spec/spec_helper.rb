require 'Faraday'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.order = "random"
end

def chatalytics_ui
  Faraday.new(:url => "http://localhost:3001") do |faraday|
    faraday.request  :url_encoded             # form-encode POST params
    faraday.response :logger                  # log requests to STDOUT
    faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
  end
end
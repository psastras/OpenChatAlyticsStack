require 'Faraday'
require 'waitutil'

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

WaitUtil.wait_for_condition("OpenChatalyticsUI healthy", 
                            :timeout_sec => 30,
                            :delay_sec => 0.5) do 
  begin
    response = chatalytics_ui.get "/"
    status = response.status
  rescue
    status = 0
  end
  status == 200
end
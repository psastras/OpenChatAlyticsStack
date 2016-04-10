require 'spec_helper'

describe "Container health checks" do

  describe "UI" do
    it 'returns an index page' do
      response = chatalytics_ui.get '/'
      
      response.status.should eq 200
    end
  end

end
require 'rails_helper'
require 'spec_helper'
RSpec.describe "Leaveinfos", type: :controller do

  describe '#index' do
    byebug
    it 'should index the leaveevents with correct params' do
      # params = {data:{attributes: {full_name: "full_name", email: "email@gmail.com", full_phone_number: "917898777888"}}}
      post :index , params: {}
      leaveevent = JSON.parse(response.body)
      expect(response).to have_http_status :index
    end
  end
end

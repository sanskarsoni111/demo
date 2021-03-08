require 'rails_helper'
# require 'spec_helper'

RSpec.describe LeaveeventsController, type: :controller do
  

# describe "new" do
#     it "returns http success" do
#       get 'new'

#       response.should be_success
#     end
#   end

  describe '#show' do
    byebug
    it 'should show the leaveevents with correct params' do
      # params = {data:{attributes: {full_name: "full_name", email: "email@gmail.com", full_phone_number: "917898777888"}}}
      post :show , params: {}
      leaveevent = JSON.parse(response.body)
      expect(response).to have_http_status :show
    end
  end
end
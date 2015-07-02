require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before(:each) do
    @admin = FactoryGirl.create(:user)
    sign_in @admin
  end

  after(:each) do
    @admin.destroy
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end

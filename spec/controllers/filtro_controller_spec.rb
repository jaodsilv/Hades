require 'rails_helper'

RSpec.describe FiltroController, type: :controller do
  before(:each) do
    @admin = FactoryGirl.create(:user)
    sign_in @admin
  end

  after(:each) do
    @admin.destroy
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end

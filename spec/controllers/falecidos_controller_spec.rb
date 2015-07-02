require 'rails_helper'

RSpec.describe FalecidosController, type: :controller do
  before(:each) do
    @admin = FactoryGirl.create(:user)
    sign_in @admin
  end

  after(:each) do
    @admin.destroy
  end

  describe "GET #new" do
    it "returns http success" do
      cadastro = FactoryGirl.create(:cadastro)
      get :new, cadastro_id: cadastro.id
      expect(response).to have_http_status(:success)
    end
  end
end

require 'rails_helper'

RSpec.describe "Aims", type: :request do
  let!(:aim) { create(:aim) }
  describe 'GET /aims' do
    it "正しいステータスコードが返ってくる" do
      get '/aims'
      expect(response).to have_http_status(:success)  
    end

    it "正しいステータスコードが返ってくる" do
      get "/aims/#{aim.id}"
      expect(response).to have_http_status(:success)  
    end
  end
end

require 'rails_helper'

RSpec.describe 'Api::V1::Users as :admin', type: :request do
  let!(:user) { create(:user) }

  context 'GET /api/v1/users' do
    let(:url) { '/api/v1/users' }
    let(:users) { create_list(:user, 5) }

    it 'returns all users' do
      get url, headers: auth_header(user)
      expect(body_json['users']).to contain_exactly(*users.as_json(only: %i[id first_name last_name email role]))
    end
  end

  context 'POST /api/v1/users' do
    let(:url) { '/api/v1/users' }
  end

  context 'PATCH /api/v1/users' do
    let(:url) { '/api/v1/users' }
  end

  context 'DELETE /api/v1/users' do
    let(:url) { '/api/v1/users' }
  end
end

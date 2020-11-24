require 'rails_helper'

RSpec.describe 'Api::V1::Users as :admin', type: :request do
  context 'GET /api/v1/users' do
    let(:url) { 'api/v1/users' }
  end

  context 'POST /api/v1/users' do
    let(:url) { 'api/v1/users' }
  end

  context 'PATCH /api/v1/users' do
    let(:url) { 'api/v1/users' }
  end

  context 'DELETE /api/v1/users' do
    let(:url) { 'api/v1/users' }
  end
end

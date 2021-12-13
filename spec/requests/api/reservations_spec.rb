require 'swagger_helper'

RSpec.describe 'reservations', type: :request do
  include Devise::Test::IntegrationHelpers

  path '/reservations' do
    login_user
    get 'all reservations' do
      tags 'Reservation'
      security [Bearer: []]
      consumes 'application/json'

      response '200', 'successful' do
        run_test!
      end
    end
  end

  path '/reservations' do
    create_item
    login_user
    post 'create reservation' do
      tags 'Reservation'
      security [Bearer: []]
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          city: { type: :string },
          date: { type: :string },
          item_id: { type: :integer },
          user_id: { type: :integer }
        },
        required: %w[city date item_id user_id]
      }

      response '201', 'created' do
        let(:Authorization) { @token }
        let(:reservation) do
          { city: 'Penjamo', date: DateTime.now, user_id: @user.id, item_id: @item.id }
        end
        let(:parameters) { :reservation }
        run_test!
      end
    end
  end

  path '/reservations/{id}' do
    create_reservation
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('reservations details') do
      tags 'Reservation'
      security [Bearer: []]
      response(200, 'successful') do
        let(:Authorization) { @token }
        let(:id) { @reservation.id }
        run_test!
      end
    end

    path '/reservations/{id}' do
      login_user
      create_reservation
      parameter name: 'id', in: :path, type: :string, description: 'id'

      delete('delete reservation') do
        tags 'Reservation'
        security [Bearer: []]
        response(204, 'successful') do
          let(:Authorization) { @token }
          let(:id) { @reservation.id }
          run_test!
        end
      end
    end
  end
end

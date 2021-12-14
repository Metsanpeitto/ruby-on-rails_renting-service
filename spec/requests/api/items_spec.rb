require 'swagger_helper'

RSpec.describe 'items', type: :request do
  include Devise::Test::IntegrationHelpers

  path '/items' do
    login_user
    get 'all items' do
      tags 'Item'
      security [Bearer: []]
      consumes 'application/json'

      response '200', 'successful' do
        run_test!
      end
    end
  end

  path '/items' do
    login_user
    post 'create item' do
      tags 'Item'
      security [Bearer: []]
      consumes 'application/json'
      parameter name: :item, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string },
          image: { type: :string },
          price: { type: :integer },
          color: { type: :string },
          user_id: { type: :integer }
        },
        required: %w[name description image price color user_id]
      }

      response '201', 'created' do
        let(:Authorization) { @token }
        let(:item) do
          { user_id: @user.id, name: @user.name, description: 'basdasar', image: 'asdasdasd', price: 234,
            color: 'black' }
        end
        let(:parameters) { :item }
        run_test!
      end
    end
  end

  path '/items/{id}' do
    create_item
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('item details') do
      tags 'Item'
      security [Bearer: []]
      response(200, 'successful') do
        let(:Authorization) { @token }
        let(:id) { @item.id }
        run_test!
      end
    end
  end
  path '/items/{id}' do
    create_item
    login_user
    parameter name: 'id', in: :path, type: :string, description: 'id'
    delete('item delete') do
      tags 'Item'
      security [Bearer: []]
      response(204, 'successful') do
        let(:Authorization) { @token }
        let(:id) { @item.id }
        run_test!
      end
    end
  end
end

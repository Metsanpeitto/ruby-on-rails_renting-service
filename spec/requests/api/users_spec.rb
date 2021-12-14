require 'swagger_helper'

describe 'Users API' do
  path '/register' do
    post 'Creates a new account' do
      tags 'Auth'
      consumes 'application/json'
      parameter name: :form, in: :body, required: true, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              name: { type: :string },
              email: { type: :string },
              password: { type: :string }
            }
          }
        },
        required: %w[name email password]
      }

      response '201', 'user created' do
        let(:form) do
          { user: { name: 'Pakos', email: 'asds@asd.com', password: '123456', password_confirmation: '123456' } }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:form) do
          { user: { name: 'Pakos', email: 'asdssd.com', password: '123456', password_confirmation: '123456' } }
        end
        run_test!
      end
    end
  end

  path '/login' do
    signup_user
    post 'Authenticate user' do
      tags 'Auth'
      consumes 'application/json'
      parameter name: :form, in: :body, required: true, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              email: { type: :string },
              password: { type: :string }
            }
          }
        },
        required: %w[name email password]
      }

      response '201', 'logged in' do
        let(:user) { @user }
        let(:form) { { user: { email: @user.email, password: '123456' } } }
        run_test!
      end

      response '401', 'invalid request' do
        let(:form) { { user: { email: 'assasaas', password: @user.password } } }
        run_test!
      end
    end
  end

  path '/logout' do
    login_user
    delete 'Log out current user' do
      tags 'Auth'
      security [Bearer: []]
      consumes 'application/json'

      response '204', 'success' do
        let(:user) { @user }
        let(:Authorization) { @token }
        run_test!
      end
    end
  end
end

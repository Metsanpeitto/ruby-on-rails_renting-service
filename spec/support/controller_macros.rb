require 'devise/jwt/test_helpers'

module ControllerMacros
  def login_user
    before(:all) do
      @user = User.last
      auth_headers = Devise::JWT::TestHelpers.auth_headers({}, @user)
      @token = auth_headers['Authorization']
      sign_in @user
    end
  end

  def signup_user
    before(:all) do
      @user = User.last
      @user
    end
  end

  def create_item
    before(:all) do
      @user = User.last
      @item = Item.create(user_id: @user.id, name: @user.name, description: 'basdasar', image: 'asdasdasd', price: 234,
                          color: 'black')
      @item
    end
  end

  def create_reservation
    before(:all) do
      @user = User.last
      @item = Item.last
      @reservation = Reservation.create(user_id: @user.id, item_id: @item.id, city: 'Penjamo', date: DateTime.now)
      @reservation
    end
  end
end

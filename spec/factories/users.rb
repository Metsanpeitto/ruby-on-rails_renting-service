FactoryBot.define do
  factory :user do
    name { 'Pako' }
    email { 'tesat@tes3.com' }
    password { '123456' }
    # password_confirmation { '123456' }
  end
end

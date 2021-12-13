FactoryBot.define do
  factory :item do
    user
    name { 'Big Ugly Boat' }
    description { 'A big and ugly boat' }
    color { 'Black' }
    image { 'https://asdasdasd.com' }
    price { 23 }
  end
end

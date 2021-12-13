require 'rails_helper'
require_relative '../../app/models/user'

RSpec.describe Item, type: :model do
  let(:user) { create(:user) }
  subject do
    described_class.new(user_id: :user, name: 'Boat Simple', description: 'Whatever asdasdasd', color: 'Blue',
                        image: 'https://asdasdasd.com', price: 345)
  end
  it { should belong_to(:user).without_validating_presence }

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a color' do
    subject.color = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a image' do
    subject.image = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).to_not be_valid
  end
end

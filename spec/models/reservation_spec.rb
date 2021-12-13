require 'rails_helper'
require_relative '../../app/models/user'
require_relative '../../app/models/item'

RSpec.describe Reservation, type: :model do
  let(:user) { create(:user) }
  subject do
    described_class.new(user_id: :user, item_id: :item, city: 'Penjamo', date: '2021-12-11 01:58:01.624673000 +0000')
  end
  it { should belong_to(:user).without_validating_presence }
  it { should belong_to(:item).without_validating_presence }

  it 'is not valid without a city' do
    subject.city = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a date' do
    subject.date = nil
    expect(subject).to_not be_valid
  end
end

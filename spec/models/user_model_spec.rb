require 'rails_helper'
require_relative '../../app/models/item'
require_relative '../../app/models/reservation'

RSpec.describe User, type: :model do
  subject do
    described_class.new(name: 'Juan',
                        email: 'test@tes.com',
                        password: '123456',
                        password_confirmation: '123456')
  end
  it { should have_many(:items).without_validating_presence }
  it { should have_many(:reservations).without_validating_presence }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a password' do
    subject.password = nil
    expect(subject).to_not be_valid
  end
end

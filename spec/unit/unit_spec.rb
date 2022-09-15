# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'nam cao', price: '23.0', published_date: DateTime.now.to_time)
  end

  it 'is valid with valid title' do
    subject.title
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  it 'is valid with valid author' do
    subject.author
    expect(subject).to be_valid
  end
  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
  it 'is valid with valid price' do
    subject.price
    expect(subject).to be_valid
  end
  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
  it 'is valid with valid published date' do
    subject.published_date
    expect(subject).to be_valid
  end
  it 'is not valid without a published date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end
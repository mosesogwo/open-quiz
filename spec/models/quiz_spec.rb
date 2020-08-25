require 'rails_helper'

RSpec.describe Quiz, type: :model do
  describe 'Associations' do
    it { should have_many(:questions) }
    it { should belong_to(:user) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_least(6).is_at_most(500)}
  end
end

require 'rails_helper'

RSpec.describe Question, type: :model do
  describe 'Associations' do
    it { should belong_to(:quiz) }
    it { should have_many(:choices) }
  end

  describe 'validations' do
    it { should validate_presence_of(:question) }
    it { should validate_length_of(:question).is_at_least(10).is_at_most(5000) }
  end
end

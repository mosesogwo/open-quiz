require 'rails_helper'

RSpec.describe Choice, type: :model do
  describe 'Associations' do
    it { should belong_to(:question) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:note) }
    it { should validate_presence_of(:choice) }
    it { should validate_length_of(:note).is_at_most(5000) }
  end
end

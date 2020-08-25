require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:quizzes) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password).is_at_least(6) }
    it { should validate_presence_of(:gender) }
    it { should validate_inclusion_of(:gender).in_array(['male', 'female'])}
    it { should validate_presence_of(:role) }
    it { should validate_inclusion_of(:role).in_array(['teacher', 'student']) }

  end
end
class Question < ApplicationRecord
  belongs_to :quiz
  has_many :choices

  validates :question, :is_active, presence: true
  validates :question, length: { minimum: 10, mazimum: 5000 }
end

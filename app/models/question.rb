class Question < ApplicationRecord
  belongs_to :quiz
  has_many :choices

  validates :question, presence: true
  validates :question, length: { minimum: 10, mazimum: 5000 }
end

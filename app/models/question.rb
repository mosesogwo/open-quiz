class Question < ApplicationRecord
  belongs_to :quiz
  has_many :choices

  validates :question, presence: true, length: { minimum: 10, maximum: 5000 }
end

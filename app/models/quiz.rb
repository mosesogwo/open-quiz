class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions
  
  validates :title, presence: true, length: { minimum: 6, mazimum: 500 }
end

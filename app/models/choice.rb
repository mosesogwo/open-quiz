class Choice < ApplicationRecord
  belongs_to :question

  validates :choice, :is_right_choice, :note, presence: true
  validates :note, length: { maximum: 5000 }
end

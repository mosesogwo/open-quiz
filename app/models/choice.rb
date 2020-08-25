class Choice < ApplicationRecord
  belongs_to :question

  validates :choice, :note, presence: true
  validates :note, length: { maximum: 5000 }
end

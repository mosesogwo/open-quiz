class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :is_active
  has_one :quiz
end

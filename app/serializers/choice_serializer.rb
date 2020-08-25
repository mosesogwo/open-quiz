class ChoiceSerializer < ActiveModel::Serializer
  attributes :id, :choice, :is_right_choice, :note
  has_one :question
end

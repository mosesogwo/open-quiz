FactoryBot.define do
  factory :choice do
    question { nil }
    choice { "MyString" }
    is_right_choice { false }
    note { "MyText" }
  end
end

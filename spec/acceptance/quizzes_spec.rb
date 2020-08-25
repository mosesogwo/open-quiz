require 'acceptance_helper'
   def token_generator(user)
    JsonWebToken.encode(user_id: user.id)
  end

resource 'Quizzes' do
  let!(:quizzes) { FactoryBot.create(:quiz) }
  let!(:users) { FactoryBot.create(:user, username:'moses',name:'somebody',email:'adamachubi@gmail.com', role: 'teacher', password: '123234566', password_confirmation: '123234566') }
  auth = Auth.new

  let!(:oil) { FactoryBot.create(:quiz, title: 'Oil and fatty acid') }
  let!(:yam) { FactoryBot.create(:quiz, title: 'sea foods') }
  let(:valid_headers) { token_generator(users) }
  before do
    header 'Authorization', valid_headers
    header 'Content-Type', 'application/json'
  end

  get 'api/v1/quizzes' do
    example_request 'Get all quizzes' do
      explanation 'List all the quizzes'
      expect(status).to eq 200
    end
  end
  # get 'api/v1/quizzes/:quiz_id' do
  #   let(:quiz_id) { quizzes.id }
  #   example_request 'Get a quiz' do
  #     explanation 'Show a quiz'
  #     expect(status).to eq 200
  #   end
  # end
  # post 'api/v1/quizzes' do
  #   route_summary 'This is used to create a quiz'
  #   parameter :title, 'User title'
  #   example_request 'Create a quiz' do
  #     explanation 'Create a quiz'
  #     do_request(title: 'Protein')
  #     expect(status).to eq 201
  #   end
  # end
  # patch 'api/v1/quizzes/:quiz_id' do
  #   let(:quiz_id) { quizzes.id }
  #   route_summary 'This is used to edit a quiz'
  #   parameter :title, 'User title'
  #   example_request 'Edit a quiz' do
  #     explanation 'Edit a quiz'
  #     do_request(title: 'Vitamins')
  #     expect(status).to eq 200
  #   end
  # end
  # delete 'api/v1/quizzes/:quiz_id' do
  #   let(:quiz_id) { quizzes.id }
  #   example_request 'Delete a quiz' do
  #     explanation 'Delete a quiz'
  #     expect(status).to eq 200
  #   end
  # end
end
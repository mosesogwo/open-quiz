class Auth
  def authenticated_header(users)
    token = Knock::AuthToken.new(payload: { sub: users.id }).token
    {
      'Authorization': "Bearer #{token}"
    }
  end

  def token(users)
    secret = Rails.application.credentials.secret_key_base
    token = JWT.encode(users.id, secret, 'HS256')
  end
   def token_generator(user)
    JsonWebToken.encode(user_id: user.id)
  end
end
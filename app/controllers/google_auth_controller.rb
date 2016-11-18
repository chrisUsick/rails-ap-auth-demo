class GoogleAuthController < ApplicationController
  def sign_in
    token = params[:token]
    p token

    response =
      HTTParty.get("https://www.googleapis.com/oauth2/v3/tokeninfo?id_token=#{token}")

    audience = ENV['WEB_CLIENT_ID']
    if response.code == 200
      data = JSON.parse response.body
      raise StandardError, 'no audience' unless data['aud'] == audience
      user = User.find_for_verified_token_response data.symbolize_keys
      headers = user.create_new_auth_token
      response.headers.merge! headers
      p response.headers
      render json: {
        user: user,
        token: headers
      }
    else
      p response.code
    end
  end
end

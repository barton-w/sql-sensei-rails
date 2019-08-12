class ApplicationController < ActionController::API
  rescue_from ActiveRecord::StatementInvalid, with: :render_statement_invalid_response

  def render_statement_invalid_response(exception)
    render json: {syntax: false, error: exception}, status: 200
  end

  #Check for a valid token, if none - Unauthorized
  def authenticate_token
    render json: {message: "Unauthorized"}, status: 401 unless decode_token(bearer_token)
  end

  #Strip the token from the request
  def bearer_token
    header = request.env["HTTP_AUTHORIZATION"]
    pattern = /^Bearer /
    header.gsub(pattern, "") if header && header.match(pattern)
  end

  #decode the incomming token
  def decode_token(token_input)
    JWT.decode(token_input, ENV["JWT_SECRET"], true)
  rescue
    render json: {message: "Unauthorized"}, status: 401
  end

  #Find a user based on the user id in the decoded token
  def get_current_user
    return if !bearer_token
    decoded_jwt = decode_token(bearer_token)
    User.find(decoded_jwt[0]["user"]["id"])
  end

  #For user-specific request, match the user from the token with the id passed in params
  def authorize_user
    render json: {message: "Unauthorized"}, status: 401 unless get_current_user.id == params[:user_id].to_i
  end
end

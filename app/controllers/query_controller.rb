class QueryController < ApplicationController
  before_action :authenticate_token
  before_action :is_user_disabled
  before_action :validate_query

  def create
    render json: {syntax: true, results: ActiveRecord::Base.connection.execute(@query)}, status: 200
  end

  private
  def query_params
    params.permit(:query_statement, :session)
  end

  def validate_query
    query = query_params[:query_statement]
    #validation_query = query.downcase
    validation_query = query

    #remove leading and trailing whitespace
    validation_query.gsub!(/\A\s+/, "")
    validation_query.gsub!(/\s+\Z/, "")

    #remove unwanted characters
    validation_query.gsub!(/\\n/, "")
    validation_query.gsub!(/\\/, "")
    validation_query.gsub!(/\//, "")
    validation_query.gsub!(/#/, "")
    validation_query.gsub!(/\@/, "")
    validation_query.gsub!(/\|/, "")
    validation_query.gsub!(/{|}/, "")
    validation_query.gsub!(/\[|\]/, "")
    validation_query.gsub!(/~/, "")
    validation_query.gsub!(/`/, "")
    validation_query.gsub!(/\^/, "")
    validation_query.gsub!(/\$/, "")
    validation_query.gsub!(/\:/, "")
    validation_query.gsub!(/\?/, "")
    validation_query.gsub!(/"/, "'")
    validation_query.gsub!(/&/, "")

    #Most severe words to block
    forbidden_patterns = [/drop/, /database/, /truncate/, /delete/, /exec/, /execute/, /users/, /user/]

    forbidden_patterns.each do |pattern|
      if validation_query.match?(pattern)
        decoded_jwt = decode_token(bearer_token)
        user = User.find(decoded_jwt[0]["user"]["id"])
        user.update(active: "disabled")
        render json: {message: "user violation"}, status: 200
        return
      end
    end

    #Other words to block, with less consequences
    error_patterns = [/alter/, /modify/, /function/, /procedure/, /table/, /if/, /else/, /while/, /def/, /set/, /rails/, /git/, /update/, /insert/, /into/, /solution/, /solutions/, /create/]

    error_patterns.each do |pattern|
      if validation_query.match?(pattern)
        render json: {syntax: false, error: "Your query angers The Sensei, please check your syntax"}, status: 422
        return
      end
    end

    #Query must begin with select
    if !validation_query.match(/^select/)
      render json: {syntax: false, error: "Make sure your query begins with SELECT"}, status: 200
      return
    end

    #Query must include from
    if !validation_query.match(/from/)
      render json: {syntax: false, error: "Make sure you're selecting FROM something"}, status: 200
      return
    end

    #Must include hard-coded list of tables
    if !validation_query.match(/friends|spirit_animals|friends_music|bands/)
      render json: {syntax: false, error: "Check your query. What table are you selecting from?"}, status: 200
      return
    end

    #add a semicolon if one doesn't exist
    if !validation_query.match(/;$/)
      validation_query = validation_query + ";"
    end

    @query = validation_query
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def form_for_tweets(tweet)
  #   html_string = ""
  #   if !tweet.id
  #     method = 'POST'
  #     action = "/tweets"
  #   else
  #     method = 'PATCH'
  #     action = "/tweets/#{tweet.id}"
  #   end
  #   form_builder = FormBuilder.new(object)
  #   html_string << yield(form_builder)
  # end

  def current_user
    @current_user ||= User.find_by(session[:user_id])
  end

  def logged_in?
    !!current_user
  end

end


# class FormBuilder
#   attr_reader :object
#   def initialize(object)
#     @object = object
#   end
#
#   def text_area(method_for_object)
#     value = object.send(method_for_object)
#     "<input type='text' value=#{value}>"
#   end
#
#   def text_field
#
#   end
# end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :check_youtube_username

  def check_youtube_username
    if signed_in? && current_user.youtube_username.blank?
      flash.now[:danger] = "Your Youtube username still needs adding to your account!"
    end
  end
end

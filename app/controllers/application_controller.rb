class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def current_wiki
    @current_wiki ||= current_user.wiki if user_signed_in?
  end
end

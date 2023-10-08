class ApplicationController < ActionController::Base
  include Pagy::Backend
  layout :set_layout

  private
  def set_layout
    if user_signed_in?
      "application_user"
    else
      "application_guest"
    end
  end

  def user_signed_in?
    !!current_user
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale

  def set_locale
    I18n.locale = request.env["HTTP_ACCEPT_LANGUAGE"].split(",")[0] == "zh-CN" ? "zh-CN" : "en"
  end
end

class ApplicationController < ActionController::Base
  before_action :flag

  def flag
    @flag = false
  end
end

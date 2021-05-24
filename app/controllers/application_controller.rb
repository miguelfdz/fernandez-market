class ApplicationController < ActionController::Base
  layout :layout_by_resource
  def user
    @current_user = current_user
  end

  protected

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end

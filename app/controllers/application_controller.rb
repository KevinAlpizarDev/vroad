class ApplicationController < ActionController::Base
  # Solo permite navegadores modernos
  allow_browser versions: :modern

  protected

  # Redirección luego del login
  def after_sign_in_path_for(resource)
    dashboard_path
  end

  # Redirección luego del logout
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end

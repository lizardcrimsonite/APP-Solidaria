class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :check_admin, only: [:admin_action] # Ajusta según tu necesidad
  
    private
  
    def check_admin
      redirect_to root_path, alert: 'No tienes permiso para acceder a esta página.' unless current_user&.admin?
    end
  end
  
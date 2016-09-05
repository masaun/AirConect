class RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def update_resource(resource, params)
      resource.update_without_password(params)
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:update_resource) { |u| u.permit({ roles: [] }, :fullname) }
    end

end
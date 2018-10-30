class ApplicationController < ActionController::Base
	include Pundit
	protect_from_forgery
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?
	after_action :verify_authorized, unless: :devise_controller?
	
	layout :layout_by_resource
	
	private
	
	def layout_by_resource
		if devise_controller?
			"devise"
		else
			"application"
		end
	end
	
	protected
	
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:callback])
	end
end

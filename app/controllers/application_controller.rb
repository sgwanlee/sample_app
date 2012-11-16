class ApplicationController < ActionController::Base
	protect_from_forgery
	# Additional Rspec setting is needed to use ssl
	# force_ssl
	include SessionsHelper
	#By default, all the helpers are available in the views but not in the controllers.
end

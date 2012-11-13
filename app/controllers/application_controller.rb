class ApplicationController < ActionController::Base
	protect_from_forgery
	include SessionsHelper
	#By default, all the helpers are available in the views but not in the controllers.
end

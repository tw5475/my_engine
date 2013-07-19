require_dependency "my_engine/application_controller"

module MyEngine
  class AuthController < ApplicationController
	def index
#		render :text => 'Hello world'
	end
	def callback
		render :text => params.inspect
	end
  end
end

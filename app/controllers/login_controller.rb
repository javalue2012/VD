class LoginController < ApplicationController
  def index
  end
  def checklogin
  	@hs = Hs.find_by(gmail: params[:gmail], password: params[:password])
  	if @hs.nil?
  		redirect_to :back
  	else
  		redirect_to '/mycontroll/index'
  	end
  end
end

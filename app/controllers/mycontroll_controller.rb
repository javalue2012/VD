class MycontrollController < ApplicationController
  def index
  	 @hs = Hs.all
  end
  def add
  end
  def addthanhcong
    	@name = params[:name]
    	@age = params[:age]
    	@gmail = params[:gmail]
    	@password = params[:password]
  	if Hs.find_by(name: @name, age: @age, gmail: @gmail , password: @password)
  		redirect_to '/mycontroll/index'
  	else
  		Hs.find_or_create_by(name: @name, age: @age, gmail: @gmail, password: @password )
  		redirect_to '/mycontroll/index'
  	end
  end
  def edit
  	  @hs = Hs.find_by_id(params[:id])
  end
  def xulyedit
  	if Hs.find_by_id(params[:id1]).update(:id=>params[:id],:name=>params[:name],:age=>params[:age],:gmail=>params[:gmail],:password=>params[:password])
  		redirect_to '/mycontroll/index'
  	else
  		redirect_to '/mycontroll/index'
  	end
  end
  def tim
      @hs = Hs.find_by_id(params[:id])
  end
  def timthanhcong
      @hs=Hs.where(id: params[:id])
  end
  	def delete
      @hs = Hs.find_by_id(params[:id])
	    Hs.delete(params[:id])
    	redirect_to '/mycontroll/index'
  	end
end

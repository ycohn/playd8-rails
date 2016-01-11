class SessionsController < ApplicationController

  def new
    @parent = Parent.new
  end

  def create
    @parent = Parent.find_by(username: params[:parent][:username])
    if @parent && @parent.authenticate(params[:parent][:password])
      session[:user_id] = @parent.id
      redirect_to root_path, notice: "You have been logged in!"
    else
      @parent = Parent.new
      flash.now[:error] = "Bad Username or Password"
      render :new
    end
  end

  def destroy
      session[:user_id] = nil
      redirect_to root_path, notice: "You have been logged out!"
  end
end

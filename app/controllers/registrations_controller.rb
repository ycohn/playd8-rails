class RegistrationsController < ApplicationController
  def new
    #binding.pry
  end

  def create
    form_fields = params.permit(:name,:username, :gender, :password, :password_confirmation)
    @parent = Parent.new(form_fields)
    if @parent.save
      session[:user_id] = @parent.id
      redirect_to root_path, notice: "Thank you for signing up"
    else
      render :new
    end
  end
end

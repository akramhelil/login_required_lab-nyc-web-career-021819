class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
    #code
    render :new
  end

  def create
    if !params[:name] || params[:name].empty?
         redirect_to "/sessions/new"
     else
         session[:name] = params[:name]
         redirect_to root_path
     end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end

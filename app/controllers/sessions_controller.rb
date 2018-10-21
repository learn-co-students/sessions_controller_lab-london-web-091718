class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] == nil
      redirect_to '/sessions/new'
    elsif params[:name] == ""
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
       redirect_to '/'
    end
  end

    # def create
    #  if !params[:name] || params[:name].empty?
    #    redirect_to sessions_new_path
    #  else
    #    session[:name] = params[:name]
    #    redirect_to root_path
    #  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end

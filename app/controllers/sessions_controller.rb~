class SessionsController < ApplicationController
  def new
  end

def create
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    redirect_to ads_url, :notice => "Zalogowany" 

  else
    flash.now.alert = "Nieprawidlowy email albo password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to ads_url, :notice => "Niezalogowany"
end


end

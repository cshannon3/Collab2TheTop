class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.from_omniauth(auth_hash)
    if @user.valid?

      session[:user_id] = @user.id
      redirect_to request.env['omniauth.origin']
    end
  end

  def destroy
    reset_session
    redirect_to request.referer
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end

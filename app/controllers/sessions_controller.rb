class SessionsController < ApplicationController

    def create
      @user = User.find_by(email_address: params[:user][:email_address])
      if @user && @user.authenticate(params[:user][:password])
        payload = { user_id: @user.id }
        token = JWT.encode(payload,'SUPER_SECRET_KEY','HS256')
        render :json => { auth_key: token, user_id: @user.id}
      else
        render :json => { :msg => "Login failed.. Try again" }
      end
    end
  
  end
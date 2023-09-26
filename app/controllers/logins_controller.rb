class LoginsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(login: params[:user][:login])

    if @user && @user.authenticate(params[:user][:password])
      session[:current_user_id] = @user.id
      redirect_to root_path
    end
  end

  def destroy
    session.delete(:current_user_id)
    @_current_user = nil
    redirect_to root_url, status: :see_other
  end
end

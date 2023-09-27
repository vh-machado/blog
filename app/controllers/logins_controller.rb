class LoginsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(login: params[:user][:login])

    if @user && @user.authenticate(params[:user][:password])
      session[:current_user_id] = @user.id
      @user.update_attribute(:is_logged_in, true)
      redirect_to root_path
    else
      redirect_to new_login_path
    end
  end

  def destroy
    @user = User.find_by(id: current_user.id)
    @user.update_attribute(:is_logged_in, false)

    session.delete(:current_user_id)
    @_current_user = nil
    redirect_to root_url, status: :see_other
  end
end

class UsersController < ApplicationController
  before_action :authenticate_admin!

  def new
    @css = css
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      @css = css
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:nome, :email, :password, :password_confirmation, :admin)
  end

  def css
    {barra_display_none: true}
  end

  def authenticate_admin!
    if !current_user.admin?
      redirect_to root_path
    end
  end
end

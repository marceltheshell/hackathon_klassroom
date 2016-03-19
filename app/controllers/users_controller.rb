class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
  end


  def user_params
    params.require(:user)
  end
  

end

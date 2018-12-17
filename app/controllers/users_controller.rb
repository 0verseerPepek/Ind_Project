class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def index
    @user = User.all
    render :json => @user
  end
  
  def Find_User
    @user = User.find_by(Login: user_params[:Login])
    if !@user.nil?
      render :json => {:Login => @user.Login, :Password => @user.Password, :score => @user.score, :Message => "You're entered"}
    else
    @user = User.new(user_params)
    @user.score = 0
    @user.save
    render :json => {:Login => @user.Login, :score => @user.score, :Message => "You're registered"}
    end
 end

  def create
    @user = User.new(user_params)
    @user.save
  end


 private def user_params
    params.require(:user).permit(:Login, :Password, :score)
  end
end

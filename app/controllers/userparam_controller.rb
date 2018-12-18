class UserparamController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
    @userp = Userparam.new
  end

  def index
    @userp = Userparam.all
    render :json => @userp
  end
  
  def Find_User
    @userp = User.find_by(Login: user_params[:Login])
    if !@userp.nil?
      render :json => {:Login => @userp.Login, :Password => @userp.password, :score => @userp.userparam.score, :Message => "You're entered"}
    else
     @userp = User.new
     @userp.Login = user_params[:Login]
     @userp.password = user_params[:Password]
     @userp.userparam = Userparam.new(user_params)
     @userp.userparam.score = 0
     @userp.save
     render :json => {:Login => @userp.Login, :score => @userp.userparam.score, :Message => "You're registered"}
    end
 end

  def create
    @userp = Userparam.new(user_params)
    @userp.save
  end


 private def user_params
    params.require(:userparam).permit(:Login, :Password, :score, :avatar)
  end
end

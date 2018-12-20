class PostController < ApplicationController
  before_action :authenticate_user!, except: [:index, :create]
  skip_before_action :verify_authenticity_token
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  
  def create
    @userp = User.find_by(Login: session[:current_user_id])
    params[:post][:avatar] = File.open(post_params[:avatar])
    @post = @userp.userparam.posts.build(post_params)
    @post.save 
 
  end
  
  def show
    
  end
  
  def edit
  end
  
  def updated
  end
  
  def destroy
    @post = find_post
    if @post.present?
    @post.destroy
    end
    redirect_to root_path
  end
  
private

  def post_params
    params.require(:post).permit(:user_id, :score, :avatar)
  end
  
  def find_post
    @post = Post.find_by(id: params[:id])
  end
end

class PostsController < ApplicationController
  
  def show
    @posts = Post.all
  end
  
  def new
   @post = Post.new
  end
  
  def create
    @post = Post.new(
      title: params[:title],
      #今回追加する操作
      user_id: current_user.id
      )
    if @post.save
     redirect_to root_path
    else
     render :new
    end
  end


  private
  def post_params
   params.require(:post).permit(:title)
  end
end

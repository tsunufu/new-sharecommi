class PostsController < ApplicationController
  
  def show
    @posts = Post.all
  end
  
  def new
   @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
     redirect_to root_path
    else
     render :new
    end
  end


    private
      def post_params
       params.require(:post).permit(
           :title, :img, :category, :assessment, :comment, :url).merge(user_id: current_user.id)
      end
end

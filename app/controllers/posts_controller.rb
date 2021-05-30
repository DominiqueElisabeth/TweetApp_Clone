class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)

    def create
   @post = Post.new(post_params)
   if params[:back]
     render :new
   else
     if  @post.save
       redirect_to  post_path ,  notice : "I created a tweet!"
     else
       render :new
     end
   end
 end

 def update
   if @post.update(post_params)
     redirect_to  posts_path ,  notice : "Edited Tweet!"
   else
     render :edit
   end
 end

 def  destroy
   @post.destroy
   redirect_to  posts_path ,  notice : "Deleted tweets!"
 end

 def  confirm
   @post = Post.new(post_params)
   render :new if @post.invalid?
 end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit( :content)
    end
end

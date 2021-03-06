class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! , only: [:new, :create, :edit, :update, :destroy]
  before_action :is_author? , only: [:edit, :update, :destroy]

  def tag_cloud
    @tags = Post.tag_counts_on(:tags)
  end

  def tag
    @posts = Post.tagged_with(params[:id])
    @post = Post.new
    @tags = Post.tag_counts_on(:tags)
    render :action => 'index'
  end

  # GET /posts
  def index
    @tags = Post.tag_counts_on(:tags)
    @posts = Post.all
    @post = Post.new
  end

  # GET /posts/1
  def show
  end

  # GET /posts/new
  def new
    return unless current_user
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    unless is_author?
      flash[:errors] = "Erreur"
      return redirect_to root_path
    end
  end

  # POST /posts
  def create
    return unless current_user
    @post = Post.new(post_params)
    @post.type_id = Type.where(:name => "Link").first.id
    @post.user_id = current_user.id

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /posts/1
  def update
    # return unless current_user == @post.author
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:title, :content, :type_id, :user_id, :tag_list)
    end

    def is_author?
      current_user == @post.author
    end
end

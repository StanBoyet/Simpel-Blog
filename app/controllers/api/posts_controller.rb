module Api
  class PostsController < ApiController

    before_action :authenticate_user!, only: :create

    def index
      render json: Post.all, each_serializer: PostSerializer
    end

    def create
      post = Post.create post_params.merge(user: current_user, type: Type.first)
      render json: post, serializer: PostSerializer
    end

    private


    def post_params
      params.require(:post).permit(:title, :content)
    end


  end
end
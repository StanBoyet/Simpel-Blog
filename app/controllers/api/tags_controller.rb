module Api
  class TagsController < ApiController

    def index
      render json: tags, each_serializer: TagSerializer
    end

    private


    def tags
      @tags ||= Post.tag_counts_on(:tags)
    end


  end
end
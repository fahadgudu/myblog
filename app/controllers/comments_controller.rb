class CommentsController < ApplicationController

  def new
    @parent = parent_object
    @comment = Comment.new
  end

  def create
    @parent = parent_object
    @comment = @parent.comments.build(comment_params)
    if @comment.save
      redirect_to parent_url(@parent)
    else
      render :action => 'new'
    end
  end

  private

  def parent_object
    case
      when params[:post_id] then Post.find(params[:post_id])
      when params[:video_id] then Video.find(params[:video_id])
    end
  end

  def parent_url(parent)
    case
      when params[:post_id] then post_url(parent)
      when params[:video_id] then video_url(parent)
    end
  end

  def comment_params
    params.require(:comment).permit(:user, :body)
  end
end

class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @article = @comment.article
    @comment.save

    redirect_to article_path(@article)

  end

  def comment_params
    params.require(:comment).permit(:author_name,:body)
  end
end

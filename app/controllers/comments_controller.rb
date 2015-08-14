class CommentsController < ApplicationController
  before_filter :require_login, except: [:create]

  def require_login
    return false unless logged_in?
  end

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

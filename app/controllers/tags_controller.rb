class TagsController < ApplicationController

  before_filter :require_login, only: [:destroy]

  def require_login
    return false unless logged_in?
  end
  
  def show
    @tag = Tag.find_by(params[:id])
  end

  def index
    @tags = Tag.all
  end

end

class TagsController < ApplicationController

  def show
    @tag = Tag.find_by(params[:id])
  end

  def index
    @tags = Tag.all
  end

end

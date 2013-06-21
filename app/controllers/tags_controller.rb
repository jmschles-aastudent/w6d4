class TagsController < ApplicationController

  def create
    @tag = Tag.create!(params[:tag])
  end

end

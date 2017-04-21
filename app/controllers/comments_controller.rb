class CommentsController < ApplicationController
  include CommentsHelper

  def create
    @comment = Comment.new(comment_params)
    @comment.spot_id = params[:spot_id]
    @comment.save
    redirect_to spot_path(@comment.spot)
  end
end

class CommentsController < ApplicationController
  respond_to :html, :js

  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.new(params[:comment])

    @comment.save

    respond_with @comment, :location => comments_url
  end

  def destroy
    @comment = Comment.find(params[:id])

    @comment.destroy

    respond_with @comment, :location => comments_url
  end
end
class CommentsController < ApplicationController
  def show
    @comment= Comment.all
  end

  def new
    @comment= Comment.new

  end

  def create
    @comment= Comment.new(comment_params)
    if @comment.save
      redirect_to "/"
    else
      redirect_to "new"
    end
  end

    private
  def comment_params
    params.require(:comment).permit(:id,:song,:singer,:story)
  end
end

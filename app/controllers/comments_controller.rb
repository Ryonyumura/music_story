class CommentsController < ApplicationController

  def show
    @comment= Comment.find(params[:id])
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

  def edit
      @comment= Comment.find(params[:id])
  end

  def update
    @comment= Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
        redirect_to static_pages_index_path
    else
      redirect_to "edit"
    end
  end

  def destroy
    @comment= Comment.find(params[:id])
    @comment.destroy
    redirect_to static_pages_index_path
  end

    private
  def comment_params
    params.require(:comment).permit(:id,:title,:song,:singer,:story)
  end
end

class OpinionsController < ApplicationController
  def create
    @comment = Comment.find(params[:comment_id])
    @opinion = Opinion.new(params_opinion)
    @opinion.comment = @comment
    if @opinion.save
      redirect_to comment_path(@comment)
    else
      render "comments/show"
    end
  end

  def edit
    @opinion = Opinion.find(params[:id])
  end

  def update
    @opinion = Opinion.find(params[:id])
    if @opinion.update_attributes(params_opinion)
      redirect_to static_pages_index_path
    else
      redirect_to "edit"
    end
  end

  def destroy
    @opinion = Opinion.find(params[:id])
    @opinion.destroy
    redirect_to static_pages_index_path
  end

  private

  def params_opinion
    params.require(:opinion).permit(:comment_id, :name, :content, :image, :remove_image)
  end
end

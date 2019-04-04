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

  private

  def params_opinion
    params.require(:opinion).permit(:comment_id, :name, :content)
  end
end

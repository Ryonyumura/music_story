class StaticPagesController < ApplicationController
  def top
  end

  def index
    @comments = Comment.all.search(params[:search])
  end

  def about
  end

  def help
  end
end

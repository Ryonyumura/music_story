class StaticPagesController < ApplicationController
  def top
  end

  def index
    @comments = Comment.all.search(params[:search]).paginate(page: params[:page], per_page: 30).order('created_at desc')
  end

  def about
  end

  def help
  end
end

class StaticPagesController < ApplicationController
  def index
    @comments= Comment.all
  end

  def about
  end

  def help
  end
end

class StaticPagesController < ApplicationController

  def top
  end

  def index
    @comments= Comment.all
  end

  def about
  end

  def help
  end
end

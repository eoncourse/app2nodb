class SiteController < ApplicationController
  def home
    @message = "This is some information about us"
  end

  def news
    @posts = []
    post1 = Post.new
    post1.title = "Somethig new"
    post1.body = "Somethig happened... " * 23
    @posts.push(post1)

    post2 = Post.new
    post2.title = "Somethig else"
    post2.body = "Somethig else happened... " * 42
    @posts.push(post2)
  end

  def contact
  end

  def submit
    @name = params[:name]
    @message = params[:message]
  end

end

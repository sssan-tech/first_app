class PostsController < ApplicationController
  def index #definition of index acction
    @posts = Post.all #all Post-model values assign to @posts
  end

  def new
  end

  def create
    Post.create(content: params[:content]) #③モデル名にデータをクリエイト。カラム名contentにview.erbのcontentキー（params）にあたるデータを格納
    redirect_to "/posts"
  end
end

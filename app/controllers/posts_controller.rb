class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)     #redirecting to show page (passing the WHOLE INSTANCE to the view page?)
  end
end

#  it is the params hash that contains all the input data

# As long as the form is routed to the create method we've written (in config/routes.rb)

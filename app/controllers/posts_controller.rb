class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  def index
    @posts = Post.all
  end

  # GET /posts/1 or /posts/1.json
  def show1
    @posts = Post.where("segno = 'Ariete'")
  end
  def show2
    @posts = Post.where("segno = 'Toro'")
  end
  def show3
    @posts = Post.where("segno = 'Gemelli'")
  end
  def show4
    @posts = Post.where("segno = 'Cancro'")
  end
  def show5
    @posts = Post.where("segno = 'Leone'")
  end
  def show6
    @posts = Post.where("segno = 'Vergine'")
  end
  def show7
    @posts = Post.where("segno = 'Bilancia'")
  end
  def show8
    @posts = Post.where("segno = 'Scorpione'")
  end
  def show9
    @posts = Post.where("segno = 'Sagittario'")
  end
  def show10
    @posts = Post.where("segno = 'Capricorno'")
  end
  def show11
    @posts = Post.where("segno = 'Acquario'")
  end
  def show12
    @posts = Post.where("segno = 'Pesci'")
  end

  # GET /posts/new
  def new
    @post = Post.new
    session[:return_to] ||= request.referer
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
    session[:return_to] ||= request.referer
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
      if @post.save
        redirect_to session.delete(:return_to)
      else
        render 'new'
      end
    end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
      if @post.update(post_params)
        redirect_to session.delete(:return_to)
      else
        render 'edit'
      end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
    redirect_back(fallback_location: root_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:description, :segno)
    end
end

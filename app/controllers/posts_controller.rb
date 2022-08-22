class PostsController < ApplicationController
  
  def index
    @posts = Post.all.order(created_at: :asc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :start_date, :end_date, :whole_day, :text))
    if @post.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to("/")
    else
      render("posts/new")
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    if @post.update(params.require(:post).permit(:title, :start_date, :end_date, :whole_day, :text))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :posts
    else
      render :edit
    end
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :posts
  end

  

end

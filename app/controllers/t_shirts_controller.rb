class TShirtsController < ApplicationController
  def index
    @t_shirts = TShirt.all
  end
  def show
    @t_shirt = TShirt.find_by(id: params[:id])
  end
  def new
    @t_shirt = TShirt.new
  end
  def create
    @t_shirt = TShirt.new(
      content: params[:content],
      color: params[:color],
      size: params[:size],
      image: params[:image]
    )
    if @t_shirt.save
      flash[:notice] = "作成しました"
      redirect_to("/t_shirts/index")
    else
      render("t_shirts/new")
    end
  end
  def edit
    @t_shirt = TShirt.find_by(id:params[:id])
  end
  def update
    @t_shirt = TShirt.find_by(id: params[:id])
    @t_shirt.content = params[:content]
    @t_shirt.color = params[:color]
    @t_shirt.size = params[:size]
    if @t_shirt.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/t_shirts/index")
    else
      render("t_shirts/edit")
    end
  end
  def destroy
    @t_shirt = TShirt.find_by(id: params[:id])
    @t_shirt.destroy
    flash[:notice] = "削除しました"
    redirect_to("/t_shirts/index")
  end
end

class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
  end
  def show
    @shoe = Shoe.find_by(id: params[:id])
  end
  def new
    @shoe = Shoe.new
  end
  def create
    @shoe = Shoe.new(
      content: params[:content],
      color: params[:color],
      size: params[:size],
      image: params[:image]
    )
    if @shoe.save
      flash[:notice] = "作成しました"
      redirect_to("/shoes/index")
    else
      render("shoes/new")
    end
  end
  def edit
    @shoe = Shoe.find_by(id:params[:id])
  end
  def update
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.content = params[:content]
    @shoe.color = params[:color]
    @shoe.size = params[:size]
    if @shoe.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/shoes/index")
    else
      render("shoes/edit")
    end
  end
  def destroy
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.destroy
    flash[:notice] = "削除しました"
    redirect_to("/shoes/index")
  end
end

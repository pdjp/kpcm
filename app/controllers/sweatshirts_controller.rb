class SweatshirtsController < ApplicationController
  def index
    @sweatshirts = Sweatshirt.all
  end
  def show
    @sweatshirt = Sweatshirt.find_by(id: params[:id])
  end
  def new
    @sweatshirt = Sweatshirt.new
  end
  def create
    @sweatshirt = Sweatshirt.new(
      content: params[:content],
      color: params[:color],
      size: params[:size],
      image: params[:image]
    )
    if @sweatshirt.save
      flash[:notice] = "作成しました"
      redirect_to("/sweatshirts/index")
    else
      render("sweatshirts/new")
    end
  end
  def edit
    @sweatshirt = Sweatshirt.find_by(id:params[:id])
  end
  def update
    @sweatshirt = Sweatshirt.find_by(id: params[:id])
    @sweatshirt.content = params[:content]
    @sweatshirt.color = params[:color]
    @sweatshirt.size = params[:size]
    if @sweatshirt.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/sweatshirts/index")
    else
      render("sweatshirts/edit")
    end
  end
  def destroy
    @sweatshirt = Sweatshirt.find_by(id: params[:id])
    @sweatshirt.destroy
    flash[:notice] = "削除しました"
    redirect_to("/sweatshirts/index")
  end
end

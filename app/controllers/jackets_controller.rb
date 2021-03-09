class JacketsController < ApplicationController
  def index
    @jackets = Jacket.all
  end
  def show
    @jacket = Jacket.find_by(id: params[:id])
  end
  def new
    @jacket = Jacket.new
  end
  def create
    @jacket = Jacket.new(
      content: params[:content],
      color: params[:color],
      size: params[:size],
      image: params[:image]
    )
    if @jacket.save
      flash[:notice] = "作成しました"
      redirect_to("/jackets/index")
    else
      render("jackets/new")
    end
  end
  def edit
    @jacket = Jacket.find_by(id:params[:id])
  end
  def update
    @jacket = Jacket.find_by(id: params[:id])
    @jacket.content = params[:content]
    @jacket.color = params[:color]
    @jacket.size = params[:size]
    if @jacket.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/jackets/index")
    else
      render("jackets/edit")
    end
  end
  def destroy
    @jacket = Jacket.find_by(id: params[:id])
    @jacket.destroy
    flash[:notice] = "削除しました"
    redirect_to("/jackets/index")
  end
end

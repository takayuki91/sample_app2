class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    # データを受け取り新規作成するためのインスタンス作成
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list.id)
    else
      render :new
    end
    # #データをデータベースに保存するためのsaveメソッド実行
    # list.save
    # #トップ画面へリダイレクト
    # #redirect_to '/top'
    # #show.html.erbへリダイレクト
    # redirect_to list_path(list.id)
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to lists_path
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end

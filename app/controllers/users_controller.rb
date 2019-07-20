class UsersController < ApplicationController #クラス名は大文字から始める。
  def index
    @users = User.all
  end

  # 新規登録画面に対応するアクション
  def new
    @user = User.new
  end

  # 新規登録するためのアクション
  def create
    User.create(user_params)
    redirect_to action: 'index'
  end

  # 詳細情報を表示するためのアクション
  def show
    @user = User.find(params[:id])
  end

  # 編集するためのアクション
  def edit
    @user = User.find(params[:id])
  end

  #更新するためのアクション
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to action: 'index'
  end

  # 削除するためのアクション
  def destroy
    user = User.find(params[:id])
    user.delete
    redirect_to action: 'index'
  end

  #このクラスだけで使うアクションを定義

  private

  #データベースに登録するデータを制限する
  def user_params
    params.require(:user).permit(:name, :age)
  end
end

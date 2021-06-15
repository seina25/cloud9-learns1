class ListsController < ApplicationController

  def new
    @list = List.new
    #@categories = Category.all # 投稿フォームのカテゴリ選択で一覧表示
  end

  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id
    @list.save
    redirect_to lists_path
  end

  def index
    @lists = List.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def list_params
    params.require(:list).permit(:learning_date, :learning_target, :learning_record, :category, :learning_time, :book_title, :book_image, :user_id)
  end

end

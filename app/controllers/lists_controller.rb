class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def show
    @bookmark = Bookmark.new
  end


  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end

end

class CvsController < ApplicationController
  before_action :find_cv, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category].blank?
      @cvs = Cv.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @cvs = Cv.where(category_id: @category_id).order("created_at DESC")
    end
  end

  def show
  end

  def new
    @cv = Cv.new
  end

  def create
    @cv = Cv.new(cvs_params)
    if @cv.save
      redirect_to @cv
    else
      renser "New"
    end
  end

  def edit
  end

  def update
    if @cv.update(cvs_params)
      redirect_to @cv
    else
      render "Edit"
    end
  end

  def destroy
    @cv.destroy
    redirect_to root_path
  end

  private

  def cvs_params
    params.require(:cv).permit(:position, :city, :description, :url, :category_id)
  end

  def find_cv
    @cv = Cv.find(params[:id])
  end
end

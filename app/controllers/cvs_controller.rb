class CvsController < ApplicationController
  before_action :find_cv, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
    @cv = Cv.new

  end

  def create
    @cv = Cv.new(cv_params)
    if @cv.save
      redirect_to @cv
    else
      renser "New"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def cvs_params
    params.require(:cv).permit(:position, :city, :description, :url)
  end

  def find_cv
    @cv = Cv.find(params[:id])
  end
end

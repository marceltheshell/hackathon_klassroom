class KlassesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def import
  	Product.import(params[:file])
  	redirect_to klass_path, notice: "Products imported."
  end

end

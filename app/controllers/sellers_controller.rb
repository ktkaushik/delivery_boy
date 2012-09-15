class SellersController < ApplicationController
  def index
	@sellers = Seller.all	
  end

  def new
  	@seller = Seller.new
  end

  def create
  	@seller = Seller.new(params[:seller])
    if @seller.save
      flash[:notice] = "Saved new seller"
      redirect_to root_path
    else
      flash[:alert] = "could not save seller"
      render :new
    end
  end

  def edit
  end

  def update
  end
end

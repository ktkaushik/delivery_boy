class CourierCompaniesController < ApplicationController
  def index
  	@seller = Seller.find(params[:seller_id])
  	@courier_companies = @seller.courier_companies.all
  end

  def new
  	@seller = Seller.find(params[:seller_id])
   	@cc = @seller.courier_companies.new
  end

  def create
  	@seller = Seller.find(params[:seller_id])
  	@courier_company = CourierCompany.new(params[:courier_company])
    if @courier_company.save
      @seller.courier_companies << @courier_company
      flash[:notice] = "Saved new courier_company"
      redirect_to root_path
    else
      flash[:alert] = "could not save courier_company"
      render :new
    end
  end

  def edit
  end

  def update
  end
end

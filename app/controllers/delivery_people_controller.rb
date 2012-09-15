class DeliveryPeopleController < ApplicationController
  def index
    @seller = Seller.find(params[:seller_id])
    @cc = CourierCompany.find(params[:courier_company_id])
    @delivery_people = @cc.delivery_people.all
  end

  def new
    @seller = Seller.find(params[:seller_id])
    @cc = CourierCompany.find(params[:courier_company_id])
    @delivery_person = @cc.delivery_people.new
  end

  def create
    @seller = Seller.find(params[:seller_id])
    @cc = CourierCompany.find(params[:courier_company_id])
    @delivery_person = @cc.delivery_people.new(params[:delivery_person])
    if @delivery_person.save
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
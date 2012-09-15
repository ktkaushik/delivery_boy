class DeliveriesController < ApplicationController
  def new
    @delivery = Delivery.new
  end

  def create
    @seller = Seller.find(params[:seller_id])
    @cc = CourierCompany.find(params[:courier_company_id])
    @dp = DeliveryPerson.find(params[:delivery_person_id])
    @delivery = @dp.deliveries.new(params[:delivery])
    if @delivery.save and @seller.deliveries << @delivery and @cc.deliveries << @delivery
      flash[:notice] = "Saved new delivery"
      redirect_to root_path
    else
      flash[:alert] = "could not save delivery"
      render :new
    end
  end

  def index
    @seller = Seller.find(params[:seller_id])
    @cc = CourierCompany.find(params[:courier_company_id])
    @dp = DeliveryPerson.find(params[:delivery_person_id])
    @deliveries = @dp.deliveries.all
  end

  def edit
  end

  def update
  end
end

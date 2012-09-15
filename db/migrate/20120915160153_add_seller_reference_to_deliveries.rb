class AddSellerReferenceToDeliveries < ActiveRecord::Migration
  def change
    add_column :deliveries, :seller_id, :integer

  end
end

class AddDetailsToDeliveries < ActiveRecord::Migration
  def change
    add_column :deliveries, :desc, :text
    add_column :deliveries, :address, :text
  end
end
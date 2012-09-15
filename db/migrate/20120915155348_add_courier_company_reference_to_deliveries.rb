class AddCourierCompanyReferenceToDeliveries < ActiveRecord::Migration
  def change
    add_column :deliveries, :courier_company_id, :integer
  end
end
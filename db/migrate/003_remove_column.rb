class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :coupons, :store
    remove_column :coupons, :coupon_code
  end
end

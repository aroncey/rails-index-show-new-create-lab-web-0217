class AddColumn < ActiveRecord::Migration
  def change
    add_column :coupons, :store, :string
    add_column :coupons, :coupon_code, :string
  end
end

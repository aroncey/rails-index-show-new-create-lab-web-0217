class CouponsController < ApplicationController
before_action :all_coupons
  def index
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    # @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)

    # or
    # @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    # redirect_to coupon_path(@coupon)
  end

  def all_coupons
    @coupons = Coupon.all
  end

end

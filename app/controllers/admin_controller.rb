class AdminController < ApplicationController
  layout "application_back_end"
  def index
    @total_orders = Order.count
  end
end

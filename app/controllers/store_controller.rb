class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  def index
  	@products = Product.order(:title)

      respond_to do |format|
          format.atom
          format.html
          format.json
      end
  end
end

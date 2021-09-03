class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title)
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
      @sum = "Столько раз мы перешли на главную: #{session[:counter]}" if session[:counter] > 5
    end
  end
end

class GenTestigoController < ApplicationController
  def index
  	@order = Order.find(params[:order_id]);
  	@creatives = @order.creatives.all
  	@creative = @creatives.first
  	@lines = @creative.lines
  	@line = @lines.first
  	@images = @creative.images.all
  	@image = @images.first
  end
end

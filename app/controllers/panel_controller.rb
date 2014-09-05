class PanelController < ApplicationController
	def index
		@temp_images = TempImage.all;

		@order = Order.find(params[:order_id])

		@creative = @order.creatives.find(params[:creative_id])
		@creatives = @order.creatives.all

		@image = @creative.images.new
		@images = @creative.images.all

		@lines = @order.lines.all - @creative.lines.all
		@lineas_asignadas = @creative.lines.all

		@page = @creative.pages.new
	end
end

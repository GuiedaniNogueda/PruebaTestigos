class PanelController < ApplicationController
	def index
		@temp_images = TempImage.all;

		@order = Order.find(params[:order_id])

		@creative = @order.creatives.new
		@creatives = @order.creatives.all
		
		if params[:creative_selected] != nil
			@creative_selected = @order.creatives.find(params[:creative_selected])
		else
			@lines = @order.lines.all
		end
		if params[:creative_selected] != nil

			@image = @creative_selected.images.new
			@images = @creative_selected.images.all

			@lines = @order.lines.all - @creative_selected.lines.all
			@lineas_asignadas = @creative_selected.lines.all

			@page = @creative_selected.pages.new
		end
	end
end
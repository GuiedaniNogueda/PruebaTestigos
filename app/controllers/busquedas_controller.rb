class BusquedasController < ApplicationController
	def index
		@orders = Order.order(:order_number).where("order_number like ?", "%#{params[:term]}%")
		render json: @orders.map { :order_number }
	end
end

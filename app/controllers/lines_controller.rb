class LinesController < ApplicationController
  before_action :set_line, only: [:show, :edit, :update, :destroy]

  # GET /lines
  # GET /lines.json
  def index
  end

  # GET /lines/1
  # GET /lines/1.json
  def show
  end

  # GET /lines/new
  def new
    @order = Order.find(params[:order_id])
    @creative = @order.creatives.new
    @lines = @order.lines.all
    @line = @order.lines.new
  end

  # GET /lines/1/edit
  def edit
    @order = Order.find(params[:order_id])
    @creative = @order.creatives.find(params[:creative_id])
    @line = @creative.lines.find(params[:line_id])  
  end

  # POST /lines
  # POST /lines.json
  def create
    @order = Order.find(params[:order_id])
    #@creative = @order.creatives.find(params[:creative_id])
    @lines = @order.lines.all
    @line = @order.lines.new(line_params)

    respond_to do |format|
      if @line.save

        #@page = @creative.pages.new
        #@page.creative_id = @creative.id
        #@page.line_id = @line.id
        #@page.save

        format.html { redirect_to new_order_line_path(@order, @creative), notice: 'Line was successfully created.' }
        format.json { render :show, status: :created, location: @line }
      else
        format.html { render :new }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lines/1
  # PATCH/PUT /lines/1.json
  def update
    respond_to do |format|
      if @line.update(line_params)
        format.html { redirect_to @line, notice: 'Line was successfully updated.' }
        format.json { render :show, status: :ok, location: @line }
      else
        format.html { render :edit }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lines/1
  # DELETE /lines/1.json
  def destroy
    @order = Order.find(params[:order_id])
    @creative = @order.creatives.find(params[:creative_id])
    @lines = @creative.lines.all
    
    @line.destroy
    respond_to do |format|
      format.html { redirect_to new_order_creative_line_path(@order, @creative), notice: 'Line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line
      @line = Line.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_params
      params.require(:line).permit(:line_number, :format_id, :start_date, :end_date)
    end
end

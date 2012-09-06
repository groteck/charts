class ElementRangesController < ApplicationController
  # GET /element_ranges
  # GET /element_ranges.json
  def index
    @element_ranges = ElementRange.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @element_ranges }
    end
  end

  # GET /element_ranges/1
  # GET /element_ranges/1.json
  def show
    @element_range = ElementRange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @element_range }
    end
  end

  # GET /element_ranges/new
  # GET /element_ranges/new.json
  def new
    @element_range = ElementRange.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @element_range }
    end
  end

  # GET /element_ranges/1/edit
  def edit
    @element_range = ElementRange.find(params[:id])
  end

  # POST /element_ranges
  # POST /element_ranges.json
  def create
    @element_range = ElementRange.new(params[:element_range])

    respond_to do |format|
      if @element_range.save
        format.html { redirect_to @element_range, notice: 'Element range was successfully created.' }
        format.json { render json: @element_range, status: :created, location: @element_range }
      else
        format.html { render action: "new" }
        format.json { render json: @element_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /element_ranges/1
  # PUT /element_ranges/1.json
  def update
    @element_range = ElementRange.find(params[:id])

    respond_to do |format|
      if @element_range.update_attributes(params[:element_range])
        format.html { redirect_to @element_range, notice: 'Element range was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @element_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /element_ranges/1
  # DELETE /element_ranges/1.json
  def destroy
    @element_range = ElementRange.find(params[:id])
    @element_range.destroy

    respond_to do |format|
      format.html { redirect_to element_ranges_url }
      format.json { head :no_content }
    end
  end
end

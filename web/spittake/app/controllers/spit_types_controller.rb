class SpitTypesController < ApplicationController
  # GET /spit_types
  # GET /spit_types.xml
  def index
    @spit_types = SpitType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @spit_types }
    end
  end

  # GET /spit_types/1
  # GET /spit_types/1.xml
  def show
    @spit_type = SpitType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @spit_type }
    end
  end

  # GET /spit_types/new
  # GET /spit_types/new.xml
  def new
    @spit_type = SpitType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @spit_type }
    end
  end

  # GET /spit_types/1/edit
  def edit
    @spit_type = SpitType.find(params[:id])
  end

  # POST /spit_types
  # POST /spit_types.xml
  def create
    @spit_type = SpitType.new(params[:spit_type])

    respond_to do |format|
      if @spit_type.save
        format.html { redirect_to(@spit_type, :notice => 'Spit type was successfully created.') }
        format.xml  { render :xml => @spit_type, :status => :created, :location => @spit_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @spit_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /spit_types/1
  # PUT /spit_types/1.xml
  def update
    @spit_type = SpitType.find(params[:id])

    respond_to do |format|
      if @spit_type.update_attributes(params[:spit_type])
        format.html { redirect_to(@spit_type, :notice => 'Spit type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @spit_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /spit_types/1
  # DELETE /spit_types/1.xml
  def destroy
    @spit_type = SpitType.find(params[:id])
    @spit_type.destroy

    respond_to do |format|
      format.html { redirect_to(spit_types_url) }
      format.xml  { head :ok }
    end
  end
end

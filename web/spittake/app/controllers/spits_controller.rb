class SpitsController < ApplicationController
  # GET /spits
  # GET /spits.xml
  def index
    @spits = Spit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @spits }
    end
  end

  # GET /spits/1
  # GET /spits/1.xml
  def show
    @spit = Spit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @spit }
    end
  end

  # GET /spits/new
  # GET /spits/new.xml
  def new
    @spit = Spit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @spit }
    end
  end

  # GET /spits/1/edit
  def edit
    @spit = Spit.find(params[:id])
  end

  # POST /spits
  # POST /spits.xml
  def create
    @spit = Spit.new(params[:spit])

    respond_to do |format|
      if @spit.save
        format.html { redirect_to(@spit, :notice => 'Spit was successfully created.') }
        format.xml  { render :xml => @spit, :status => :created, :location => @spit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @spit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /spits/1
  # PUT /spits/1.xml
  def update
    @spit = Spit.find(params[:id])

    respond_to do |format|
      if @spit.update_attributes(params[:spit])
        format.html { redirect_to(@spit, :notice => 'Spit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @spit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /spits/1
  # DELETE /spits/1.xml
  def destroy
    @spit = Spit.find(params[:id])
    @spit.destroy

    respond_to do |format|
      format.html { redirect_to(spits_url) }
      format.xml  { head :ok }
    end
  end
end

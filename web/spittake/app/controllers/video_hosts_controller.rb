class VideoHostsController < ApplicationController
  # GET /video_hosts
  # GET /video_hosts.xml
  def index
    @video_hosts = VideoHost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @video_hosts }
    end
  end

  # GET /video_hosts/1
  # GET /video_hosts/1.xml
  def show
    @video_host = VideoHost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @video_host }
    end
  end

  # GET /video_hosts/new
  # GET /video_hosts/new.xml
  def new
    @video_host = VideoHost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @video_host }
    end
  end

  # GET /video_hosts/1/edit
  def edit
    @video_host = VideoHost.find(params[:id])
  end

  # POST /video_hosts
  # POST /video_hosts.xml
  def create
    @video_host = VideoHost.new(params[:video_host])

    respond_to do |format|
      if @video_host.save
        format.html { redirect_to(@video_host, :notice => 'Video host was successfully created.') }
        format.xml  { render :xml => @video_host, :status => :created, :location => @video_host }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @video_host.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /video_hosts/1
  # PUT /video_hosts/1.xml
  def update
    @video_host = VideoHost.find(params[:id])

    respond_to do |format|
      if @video_host.update_attributes(params[:video_host])
        format.html { redirect_to(@video_host, :notice => 'Video host was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @video_host.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /video_hosts/1
  # DELETE /video_hosts/1.xml
  def destroy
    @video_host = VideoHost.find(params[:id])
    @video_host.destroy

    respond_to do |format|
      format.html { redirect_to(video_hosts_url) }
      format.xml  { head :ok }
    end
  end
end

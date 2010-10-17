class UserAgentsController < ApplicationController
  # GET /user_agents
  # GET /user_agents.xml
  def index
    @user_agents = UserAgent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_agents }
    end
  end

  # GET /user_agents/1
  # GET /user_agents/1.xml
  def show
    @user_agent = UserAgent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_agent }
    end
  end

  # GET /user_agents/new
  # GET /user_agents/new.xml
  def new
    @user_agent = UserAgent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_agent }
    end
  end

  # GET /user_agents/1/edit
  def edit
    @user_agent = UserAgent.find(params[:id])
  end

  # POST /user_agents
  # POST /user_agents.xml
  def create
    @user_agent = UserAgent.new(params[:user_agent])

    respond_to do |format|
      if @user_agent.save
        format.html { redirect_to(@user_agent, :notice => 'User agent was successfully created.') }
        format.xml  { render :xml => @user_agent, :status => :created, :location => @user_agent }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_agent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_agents/1
  # PUT /user_agents/1.xml
  def update
    @user_agent = UserAgent.find(params[:id])

    respond_to do |format|
      if @user_agent.update_attributes(params[:user_agent])
        format.html { redirect_to(@user_agent, :notice => 'User agent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_agent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_agents/1
  # DELETE /user_agents/1.xml
  def destroy
    @user_agent = UserAgent.find(params[:id])
    @user_agent.destroy

    respond_to do |format|
      format.html { redirect_to(user_agents_url) }
      format.xml  { head :ok }
    end
  end
end

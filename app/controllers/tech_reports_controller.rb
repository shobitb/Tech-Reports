class TechReportsController < ApplicationController
  # GET /tech_reports
  # GET /tech_reports.xml
  def index
    @tech_reports = TechReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tech_reports }
    end
  end

  # GET /tech_reports/1
  # GET /tech_reports/1.xml
  def show
    @tech_report = TechReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tech_report }
    end
  end

  # GET /tech_reports/new
  # GET /tech_reports/new.xml
  def new
    @tech_report = TechReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tech_report }
    end
  end

  # GET /tech_reports/1/edit
  def edit
    @tech_report = TechReport.find(params[:id])
  end

  # POST /tech_reports
  # POST /tech_reports.xml
  def create
    @tech_report = TechReport.new(params[:tech_report])
    @tech_report.tech_report = params[:file]
    @tech_report.save!
    respond_to do |format|
      if @tech_report.save
        format.html { redirect_to(@tech_report, :notice => 'TechReport was successfully created.') }
        format.xml  { render :xml => @tech_report, :status => :created, :location => @tech_report }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tech_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tech_reports/1
  # PUT /tech_reports/1.xml
  def update
    @tech_report = TechReport.find(params[:id])

    respond_to do |format|
      if @tech_report.update_attributes(params[:tech_report])
        format.html { redirect_to(@tech_report, :notice => 'TechReport was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tech_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_reports/1
  # DELETE /tech_reports/1.xml
  def destroy
    @tech_report = TechReport.find(params[:id])
    @tech_report.destroy

    respond_to do |format|
      format.html { redirect_to(tech_reports_url) }
      format.xml  { head :ok }
    end
  end
end

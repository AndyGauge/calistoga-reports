class ReportsController < ApplicationController

  def new
    @report = Report.new(params[:report])
  end
  def create
    @report = Report.new(report_params)

    if @report.save
      redirect_to action: :thanks
    else
      flash[:error] = "Invalid Submission"
      redirect_to action: :new
    end
  end
  def thanks
  end
  def show
    @report = Report.find(params[:id])
  end
  def index
    @reports = Report.all
  end
  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to :reports
  end
  def report_params
    params.require(:report).permit(:store_id, :date, :amount, :deposit, :notes)
  end
end

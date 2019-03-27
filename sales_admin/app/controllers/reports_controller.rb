require 'csv'

class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  def new
  end

  def create
    report = Report.create

    CSV.foreach(params[:csv_batch_file].tempfile, headers: false) do |row|
      row[3].to_i.times do 
        report.items << Item.create(customer_name: row[0], description: row[1], price: row[2], merchant_name: row[4], merchant_address: row[5])
      end
    end
    redirect_to action: :index
  end
end

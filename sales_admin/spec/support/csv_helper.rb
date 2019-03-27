require 'csv'
module CsvHelper
  def generate_csv_file(rows)
    tmp_file_name = "#{Rails.root}/tmp/sales_#{Time.now.to_i}.csv"
    CSV.open(tmp_file_name, "wb") do |csv|
      rows.each do |row|
        csv << row
      end 
    end
    tmp_file_name
  end
end

require "rails_helper"

describe "Upload csv", type: :feature do
  context "All data is correct" do
    it "displays the total sales revenue" do
      visit reports_path
      expect(page).not_to have_content(/Sales Report \d+/)

      visit new_report_path
      rows = [
        ["Jack Johnson", "Premium Cowboy Boots", 149.99, 1, "Yeehaw Ranchers", "45 Rodeo Drive"], 
        ["Screech Powers", "Pocket Protectors", 10.00, 3, "All Star School Supplies", "1600 Pennsylvania Avenue"] 
      ]
      file_name = generate_csv_file(rows)
      attach_file("Select sales file", file_name)
      click_button "upload sales file"
      expect(page).to have_content(/Sales Report \d+/)
      click_link("Sales Report #{Report.first.id}")
      expect(page).to have_content("179.99")
    end
  end
end


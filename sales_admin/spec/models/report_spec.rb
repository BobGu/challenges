require 'rails_helper'

describe Report do
  describe "#total_revenue" do
    let!(:report) { Report.create }
    let(:expected_price) { BigDecimal.new("8.97") }
    before do
      3.times do 
        report.items << Item.create(price: 2.99)
      end
    end

    it { expect(report.total_revenue).to eq(expected_price) }
  end
end

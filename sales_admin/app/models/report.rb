class Report < ActiveRecord::Base
  has_many :items

  def total_revenue
    items.sum(:price)
  end
end

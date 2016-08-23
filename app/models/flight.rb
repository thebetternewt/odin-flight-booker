class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"

  validates :from_airport_id, presence: true
  validates :to_airport_id, presence: true
  validates :departs_at, presence: true
  validates :duration_in_hours, presence: true

  def Flight.get_departure_dates
    departure_dates = Flight.pluck(:departs_at)
    departure_dates.map! { |ft| [ ft.to_date.strftime('%m/%d/%Y'), ft.to_date ] }
    departure_dates.uniq
  end
end

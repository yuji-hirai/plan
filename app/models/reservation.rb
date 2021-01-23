class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :start_day, presence: true
  validates :end_day, presence: true
  validates :number, presence: true
end

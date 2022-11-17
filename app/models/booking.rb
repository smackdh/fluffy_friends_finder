class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  validates :date_start, presence: true
  validates :date_end, presence: true
  validates :pet, presence: true
  enum status: {pending: 0, accepted: 1, rejected: 2}
end

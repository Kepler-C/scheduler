class Appointment < ApplicationRecord
  validates :patient_name, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :issue, presence: true, length: { minimum: 10 }
end

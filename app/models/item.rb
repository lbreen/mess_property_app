class Item < ApplicationRecord
  belongs_to :user

  locations = [
    'Dining Room',
    'Hallway',
    'Main Entrance',
    'Bar',
    'Presentation room'
  ]

  validates :name, presence: true, uniqueness: true
  validates :reference_number, uniqueness: true
  validates :location, presence: true, inclusion: { in: locations }
end

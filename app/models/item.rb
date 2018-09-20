class Item < ApplicationRecord
  belongs_to :user

  locations = [
    'Dining Room',
    'Hallway',
    'Main Entrance',
    'Bar',
    'Presentation room'
  ]

  validates :location, inclusion: { in: locations }
end

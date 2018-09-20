items = {
  'glorious_first' => {
    name: "Glorious 1st of June",
    location: "Dining Room",
    reference_number: "P123",
    comments: "INSERT REGI HISTORY",
    user: User.first
  },
  'badajoz' => {
    name: "Battle of Badajoz",
    location: "Dining Room",
    reference_number: "P456",
    comments: "INSERT REGI HISTORY",
    user: User.first
  },
  'got' => {
    name: "Game of Thrones Caricature",
    location: "Bar",
    reference_number: "C123",
    comments: "INSERT REGI HISTORY",
    user: User.first
  }
}

Item.destroy_all

items.each { |key, value| Item.create!(value) }

puts "DB successfully seeded"

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
events_data = [
  {
    start_time: 1.hour.from_now,
    title: "Sample Event 1",
    description: "This is the description for Sample Event 1.",
    link: "https://example.com/sample-event-1",
    location: "Room 101"
  },
  {
    start_time: 2.hours.from_now,
    title: "Sample Event 2",
    description: "This is the description for Sample Event 2.",
    link: "https://example.com/sample-event-2",
    location: "Room 202"
  },
  {
    start_time: 3.hours.from_now,
    title: "Sample Event 3",
    description: "This is the description for Sample Event 3.",
    link: "https://example.com/sample-event-3",
    location: "Room 303"
  }
]

events_data.each do |event_params|
  Event.create!(event_params)
end

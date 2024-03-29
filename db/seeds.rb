require 'open-uri'

puts "Creating artists..."
URL = "https://raw.githubusercontent.com/rodloboz/lw-fullstack/master/airtunes/data/artists.json"

response = open(URL).read

artists = JSON.parse(response)

Artist.create!(artists)
puts "Created #{Artist.count} artists."

tags = [
  "rock",
  "jazz",
  "70s"
]

tags.each do |tag|
  Tag.create!(name: tag)
end

puts "Finished!"

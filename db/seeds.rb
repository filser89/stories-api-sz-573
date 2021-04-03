# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Story.destroy_all if Rails.env.development?

stories = [
  { title: "DB", description: "How to get MUSICIANS BY TRACK LIST????" },
  { title: "HTML/CSS", description: "Landing Page" },
  { title: "JS", description: "StimulusJS... wooops :(" }
]



stories.each do |story|
  s = Story.create!(
    title: story[:title],
    description: story[:description]
  )

  puts "#{s.title} created!"
end
puts "Created #{Story.count} stories!"

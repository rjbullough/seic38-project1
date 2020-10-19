activity = %w(very-active active semi-active sedentry)
goal = %w(gain lose maintain)
User.destroy_all
20.times do
  User.create({
    name: Faker::Name.name,
    email: Faker::Internet.email,
    gender: Faker::Gender.binary_type,
    height: rand(145..200),
    weight: rand(45..150),
    activity_level: activity.sample,
    goal: goal.sample,
    target_intake: rand(1300..3500),
    password: "chicken"
    })
  end
puts "#{User.count} Users created"

Entry.destroy_all
500.times do |entry|
  entry = Entry.create({
    date: Faker::Date.between(from: 7.days.ago, to: Date.today)
  })
  User.all.sample.entries << entry
end
puts "#{Entry.count} Entries created"

Item.destroy_all
400.times do |item|
  item = Item.create({
    name: Faker::Food.dish,
    protein: rand(1..100),
    carb: rand(1..200),
    fat: rand(1..100)
  })
  item.update_energy
  Entry.all.sample.items << item
end

puts "#{Item.count} Items created"

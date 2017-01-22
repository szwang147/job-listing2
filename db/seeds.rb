# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts"1@1, 10hide job, 10public job,"
create_account = User.create!(email:'1@1', password: '123123', is_admin:'true')

create_jos = for i in 1..10 do
  Job.create!(title: "Job no.#{i}", description: "create for public no.#{i} job", wage_upper_bound: rand(6..9)*100, wage_lower_bound: rand(1..3)*100, is_hidden: "false")
end

create_jos = for i in 1..10 do
  Job.create!(title: "Job no.#{i}", description: "create for hide no.#{i} job", wage_upper_bound: rand(6..9)*100, wage_lower_bound: rand(1..3)*100, is_hidden: "true")
end

puts"1@1, 10hide job, 10public job success"

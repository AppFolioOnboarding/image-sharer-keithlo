# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

urls = [
  ['https://s3.amazonaws.com/dsg.files.app.content.prod/gereports/wp-content/uploads/2018/07/31031119/Wave-3.jpg',"2019-09-17 23:04:15", "2019-09-17 23:04:15"],
  ['https://images.unsplash.com/photo-1535392432937-a27c36ec07b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1834&q=80.jpg', "2019-09-17 23:04:20", "2019-09-17 23:04:20"],
  ['https://kickstart.bikeexif.com/wp-content/uploads/2019/08/vintage-cafe-racers-1.jpg', "2019-09-17 23:04:25", "2019-09-17 23:04:25"]
]

urls.each do |url, created_at, updated_at|
  ImageUrl.create(url: url, created_at: created_at, updated_at: updated_at)
end

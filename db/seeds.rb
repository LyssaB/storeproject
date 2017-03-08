# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(:name => "Midsummer Night's Dream", :description => "“In this same interlude it doth befall
That I, one Snout by name, present a wall.
And such a wall, as I would have you think,
That it had a crannied hole, or chink,”
-A Midsummer Night’s Dream", :image_url => "https://melissadawnmakes.files.wordpress.com/2015/06/wall2.jpg?w=300&h=225", :colour => "Bronze", :price => 65)
Product.create(:name => "Whale Pendant", :description => "“Another thing that got forgotten was the fact that against all probability a sperm whale had suddenly been called into existence several miles above the surface of an alien planet.”
-Hitchhiker’s Guide to the Galaxy", :image_url => "https://melissadawnmakes.files.wordpress.com/2015/07/whale2.jpg?w=300&h=225", :colour => "Bronze", :price => 65)
Product.create(:name => "Cassandra Rings", :description => "Inspired by Cassandra, the awesome warrior from Dragon Age! This is a two part ring, so you can either wear them separately, stack them with your own rings, or wear them together for a total armor feel. There are three little cubic zirconia stones to give it a little sparkle.", :image_url => "https://melissadawnmakes.files.wordpress.com/2016/03/dscn5400.jpg?w=301&h=226&crop=1", :colour => "Bronze", :price => 235)


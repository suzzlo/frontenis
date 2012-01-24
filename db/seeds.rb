# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Ion Gonzalez', email:'ion@suzzlo.org')
User.create(name: 'Itxasain Angulo', email:'')
User.create(name: 'Sergio Minguez', email:'')
User.create(name: 'Mikel Barcenilla', email:'')
User.create(name: 'Jose Sanz', email:'')
User.create(name: 'Haritz Raso', email:'')
User.create(name: 'Aketza Raso', email:'')

Game.create(played: '2012-01-10 20:00', t1_p1: 1, t1_p2: 5, t2_p1:4, t2_p2: 7, t1_points: 17, t2_points: 16)
Game.create(played: '2012-01-10 20:00', t1_p1: 1, t1_p2: 5, t2_p1:4, t2_p2: 7, t1_points: 15, t2_points: 13)
Game.create(played: '2012-01-10 20:00', t1_p1: 1, t1_p2: 5, t2_p1:4, t2_p2: 7, t1_points: 15, t2_points: 10)
Game.create(played: '2012-01-10 20:00', t1_p1: 1, t1_p2: 5, t2_p1:4, t2_p2: 7, t1_points: 15, t2_points: 6)

Game.create(played: '2012-01-25 20:00', t1_p1: 1, t1_p2: 2, t2_p1:3, t2_p2: 4, t1_points: 15, t2_points: 12)
Game.create(played: '2012-01-25 20:20', t1_p1: 1, t1_p2: 2, t2_p1:3, t2_p2: 4, t1_points: 10, t2_points: 15)
Game.create(played: '2012-01-25 20:40', t1_p1: 1, t1_p2: 2, t2_p1:3, t2_p2: 4, t1_points: 15, t2_points: 13)
Game.create(played: '2012-01-25 21:00', t1_p1: 1, t1_p2: 2, t2_p1:3, t2_p2: 4, t1_points: 9, t2_points: 15)
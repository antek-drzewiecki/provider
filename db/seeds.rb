# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Doorkeeper::Application.create!(name: "test application",
                                redirect_uri: "http://localhost:3001/users/auth/doorkeeper/callback" ,
                                uid: "aa6ebc0240635440bf0502212e076179d2c303ecb98b980feb48cdb9199c046a",
                                secret:"8767c6661298dbaa810fb9f0fdcb23fcf5b63dd59fbe06929dbf3ae45f57a548")
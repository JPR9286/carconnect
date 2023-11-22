# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"
Vehicule.destroy_all
User.destroy_all


 user = User.create!(email:"testfirst@test.com", password:"121555554")

car1 = Vehicule.new(category: "Char", model: "coccinelle", description: "Anti-radar, max velocity: 30km/h, ideale pour les bouchons a Paris", prix: 120)
car1.user = user
file = URI.open("app/assets/images/coccinelle_char.jpg")
car1.photo.attach(io: file, filename: "car.jpeg", content_type: "image/jpg")
car1.save

car2 = Vehicule.new(category: "Champignions", model: "Amsterdam", description: "doté d'un cendrier marocain", prix: 130)
car2.user = user
file = URI.open("app/assets/images/photo_vehicule/amanite.jpg")
car2.photo.attach(io: file, filename: "car.jpeg", content_type: "image/jpg")
car2.save

car3 = Vehicule.new(category: "Mini", model: "Hot-dog", description: "Voiture special pour les policiers retraités", prix: 135)
car3.user = user
file = URI.open("app/assets/images/photo_vehicule/mini_saucisse.jpeg")
car3.photo.attach(io: file, filename: "car.jpeg", content_type: "image/jpeg")
car3.save

car4 = Vehicule.new(category: "Moto", model: "Kawasaki-Tesla", description: "100% electrique, bonne tenue sur la piste ciclable.", prix: 140)
car4.user = user
file = URI.open("app/assets/images/photo_vehicule/moto_drole.jpeg")
car4.photo.attach(io: file, filename: "car.jpeg", content_type: "image/jpeg")
car4.save

car5 = Vehicule.new(category: "Mp3", model: "No-Shame", description: "slip offert", prix: 155)
car5.user = user
file = URI.open("app/assets/images/photo_vehicule/MP3_750.jpg")
car5.photo.attach(io: file, filename: "car.jpeg", content_type: "image/jpg")
car5.save

car6 = Vehicule.new(category: "Car", model: "OmarCar", description: "MANGEZ DES OMARS DANS LA OMAR CARS, CONDUIT PAR OMAR !", prix: 160)
car6.user = user
file = URI.open("app/assets/images/photo_vehicule/omar_sy_car.jpeg")
car6.photo.attach(io: file, filename: "car.jpeg", content_type: "image/jpeg")
car6.save

car7 = Vehicule.new(category: "On sait pas", model: "voiture boule", description: "Les tonneaux vont etre interminable", prix: 180)
car7.user = user
file = URI.open("app/assets/images/photo_vehicule/smart.jpg")
car7.photo.attach(io: file, filename: "car.jpeg", content_type: "image/jpg")
car7.save

car8 = Vehicule.new(category: "car", model: "Cardinau", description: "marche au silex pendant 1km", prix: 200)
car8.user = user
file = URI.open("app/assets/images/photo_vehicule/voiture_dinau.jpeg")
car8.photo.attach(io: file, filename: "car.jpeg", content_type: "image/jpeg")
car8.save

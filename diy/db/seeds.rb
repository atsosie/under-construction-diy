# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Seeding Data ..."


Comment.destroy_all
ProjectTag.destroy_all
ProjectUpload.destroy_all
ProjectStatus.destroy_all
Review.destroy_all
Project.destroy_all
ReviewUpload.destroy_all
User.destroy_all

# load seeds from respective seed files
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }



puts "DONE!"
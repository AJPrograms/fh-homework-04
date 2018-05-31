# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
Author.destroy_all
Authorship.destroy_all

classications =
[
    'General Works - encyclopedias',
    'Philosophy, Psychology, Religion',
    'History - Auxiliary Sciences',
    'History (except American)',
    'General U.S. History',
    'Local U.S. History',
    'Geography, Anthropology, Recreation',
    'Social Sciences U',
    'Political Science V',
    'Law Z - Bibliography and Library Science',
    'Education',
    'Music',
    'Fine Arts',
    'Language and Literature',
    'Science',
    'Medicine',
    'Agriculture',
    'Technology',
    'Military',
    'Naval Science',
    'Bibliography and Library Science'
]

book_types = ['Fiction', 'Non-Fiction']

50.times do 
  Book.create!(title: Faker::Book.title,
               genre: Faker::Book.genre,
               classification: classications.sample,
               book_type: book_types.sample,
               year: rand(1900..2018))
end

25.times do 
  Author.create!(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  age: rand(10..90))
end

book_ids = Book.pluck(:id)
author_ids = Author.pluck(:id)

# for each book in books
#   1) generate a random author ID from the list of possible author IDs
#   2) create an authorship which has the current book ID and the ID of the author
#      from step 1
# end for

book_ids.each do |book_id|
  Authorship.create!(book_id: book_id,
                     author_id: author_ids.sample)
end

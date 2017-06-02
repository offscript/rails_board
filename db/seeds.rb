# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: 'user@example.com', nickname: 'UOne', name: 'User One', password: "monkey67")
Post.create(title: 'Software Developer', location: 'New York City, New York', description: 'Looking for a Software Developer to oversee database')
Post.create(title: 'Front-End Developer', location: 'Washington, D.C.', description: 'Looking for a Front-End Software Developer to manage web app. ')
Post.create(title: 'Software Developer II', location: 'Seattle, Washington', description: 'NEED HELP NOW')
Post.create(title: 'Senior Software Engineer', location: 'Austin, TX', description: 'Looking for a Senior Engineer to oversee product development')
Post.create(title: 'Lead Web Developer', location: 'Atlanta, GA', description: 'Looking for experienced web developer to lead team')
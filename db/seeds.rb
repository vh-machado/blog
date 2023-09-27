# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

articles = Article.create([
  { 
    title: 'artigo seed', 
    body: 's s s s s s s s s s', 
    status: 'public' 
  }
])

users = User.create([
  { 
    login: 'admin@email.com', 
    nickname: 'admin', 
    password_digest: 'admin123', 
    password_confirmation: nil, 
    is_admin: true, 
    is_logged_in: false 
  },
  { 
    login: 'user@email.com', 
    nickname: 'user', 
    password_digest: 'user1234', 
    password_confirmation: nil, 
    is_logged_in: false 
  }
])
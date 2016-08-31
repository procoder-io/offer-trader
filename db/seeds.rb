ActiveRecord::Base.transaction do
  john = User.create!(email: "john@procoder.io", password: "123123123", password_confirmation: "123123123")
  dave = User.create!(email: "dave@procoder.io", password: "123123123", password_confirmation: "123123123")
  chris = User.create!(email: "chris@procoder.io", password: "123123123", password_confirmation: "123123123")

  Offer.create!(seller: john, text: "iPhone 5 16GB", price: 150)
  Offer.create!(seller: john, text: "Samsung Galaxy S", price: 300)

  Offer.create!(seller: dave, text: "Samsung Smart TV", price: 500)
  Offer.create!(seller: dave, text: "Music lessons", price: 50)

  Offer.create!(seller: chris, text: "Coding lessons", price: 100)
  Offer.create!(seller: chris, text: "Swimming lessons", price: 30)
end
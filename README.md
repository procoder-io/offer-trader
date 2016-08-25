# Offer Trader
That project is practical part of lesson "Ruby on Rails Transactions" http://procoder.io/lessons/ruby-on-rails-transactions. In that project you'll learn transaction management basics in Ruby on Rails.  

This application is marketplace for making deals between sellers and buyers. It contains bootstrapped project with main things implemented. Your task described below.

Disclaimer: in that application we're focused mostly on transactions and for simplicity reasons just skips some best practices not related to that topic.

## Prerequisites
* Ruby 2.2.x or greater
* Ruby on Rails 5
* PostgreSQL. It's possible to change it on MySQL. Uncomment `mysql2` gem and change `config/database.yml` adapter setting to `mysql2`

## Installation
Clone project and make bundle install
```
git clone ...
cd offer_trader
./bin/setup
```

## Main models
* User
* Payment - new payments are increasing `User` balance
* Offer - if buyer accepts offer, then buyer's balance decreased and seller balance increased by `price`.

## Tasks
Project is bootstrapped with few users and offers. Their credentials is provided on main page. You need to login as any of those user to test actions in UI. You can create offers and payments from UI or from console.

*Task #1* Implement code that increments user balance when `Payment` is created. Add it as callback.

*Task #2* Implement money transfer between `Offer` seller and buyer when it purchased. Add it inside `OfferCreator#create!`. Note that logic is extracted from model to service object.

*Task #3* Add logging about created payments and offers. Write to `Rails.logger.info` basic information about created objects. Choose right place and log only really created objects.

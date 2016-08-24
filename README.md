# Offer Trader
This is practical project of lesson [http://procoder.io/lessons/ruby-on-rails-transactions] for practice Ruby on Rails transaction management.  
The idea of that application for making deals between sellers and buyers. Our main goal here is to implement bootstrapped methods in the right way.

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
* Payment - used for increasing `User` balance
* Offer - offer is some service that suggested by seller and accepted by buyer. If buyer accepts offer, then user balance decreased on the `price` of offer.

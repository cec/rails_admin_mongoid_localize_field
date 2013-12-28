# RailsAdminMongoidLocalizeField

Adds to [RailsAdmin](https://github.com/sferik/rails_admin) support for [mongoid localized fields](http://mongoid.org/en/mongoid/docs/documents.html#localized_fields).


## Installation

In your `Gemfile`add the following dependencies:

    gem 'rails_admin_mongoid_localize_filed', :github => 'sudosu/rails_admin_mongoid_localize_filed'

Run:

    $ bundle install

## Usage

Just by telling the field to `localize`:
```ruby
class Category
  include Mongoid::Document

  field :name, type: String, localize: true
  field :description, type: String, localize: true
end
```

## Screenshot

![Screenshot](https://s3-us-west-2.amazonaws.com/droplr.storage/files/acc_176152/yd3e?AWSAccessKeyId=AKIAJSVQN3Z4K7MT5U2A&Expires=1388262962&Signature=Q5fdU5Bn8Q9dMa%2BOGiLtjQwctp0%3D&response-content-disposition=inline%3B%20filename%3Drails_admin_mongoid_localize_fields.png%3B%20filename%2A%3DUTF-8%2527%2527rails_admin_mongoid_localize_fields.png)


This project rocks and uses MIT-LICENSE.
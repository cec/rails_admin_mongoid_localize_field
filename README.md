# RailsAdminMongoidLocalizeField

Adds to [RailsAdmin](https://github.com/sferik/rails_admin) support for [mongoid localized fields](http://mongoid.org/en/mongoid/docs/documents.html#localized_fields).

## Installation

In your `Gemfile`add the following dependencies:

    gem "rails_admin_mongoid_localize_filed", "~> 0.1.0"

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

If you didn't like ui tabs, you can remove them and use simple form template using `tabbed` option: 
```ruby
# config/initializer/rails_admin.rb

config.model 'Category' do
  edit do
    field :name do
      tabbed false
    end
    field :description do
      tabbed false
    end
  end
end
```

## Screenshot

![Screenshot](https://s3-us-west-2.amazonaws.com/droplr.storage/files/acc_176152/yd3e?AWSAccessKeyId=AKIAJSVQN3Z4K7MT5U2A&Expires=1388262962&Signature=Q5fdU5Bn8Q9dMa%2BOGiLtjQwctp0%3D&response-content-disposition=inline%3B%20filename%3Drails_admin_mongoid_localize_fields.png%3B%20filename%2A%3DUTF-8%2527%2527rails_admin_mongoid_localize_fields.png)


## Dependencies

* haml
* mongoid >= 3.0
* rails >= 4.0
* rails_admin >= 0.5

This project rocks and uses MIT-LICENSE.

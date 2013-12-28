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
class YourModel
  include Mongoid::Document

  field :name, type: String, localize: true
  field :description, type: String, localize: true
end
```

## Screenshot

![Screenshot](https://www.dropbox.com/s/nirb1gffw7gbob2/rails_admin_mongoid_localize_fields.png)


This project rocks and uses MIT-LICENSE.
# RailsAdminMongoidLocalizeField

Adds to [RailsAdmin](https://github.com/sferik/rails_admin) support for [mongoid localized fields](http://mongoid.org/en/mongoid/docs/documents.html#localized_fields).

**DO NOT OPEN ISSUES ON THIS FORK AS I CAN'T GUARANTEE ANY SUPPORT**

## Installation

In your `Gemfile`add the following dependencies:

    gem "rails_admin_mongoid_localize_field", github: "cec/rails_admin_mongoid_localize_field"

Run:

    $ bundle install

## Usage

Just by telling the field to `localize`:

```ruby
class Category
  include Mongoid::Document

  field :name,        type: String, localize: true
  field :description, type: String, localize: true
end
```

If you didn't like ui tabs, you can remove them and use simple form template by using `tabbed` option:

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

![Screenshot](https://raw.github.com/sudosu/screenshots/master/rails_admin_mongoid_localize_fields.png)


## Dependencies

* haml
* mongoid >= 3.0
* rails >= 3.0
* rails_admin >= 0.5

This project rocks and uses MIT-LICENSE.

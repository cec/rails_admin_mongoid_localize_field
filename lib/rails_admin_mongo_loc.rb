require "rails_admin_mongo_loc/engine"
require 'active_support/concern'

module RegisterType
  extend ActiveSupport::Concern

  included do
    RailsAdmin::Config::Fields::Types::register(self)

    register_instance_option :allowed_methods do
      [method_name, name.to_s + '_translations']
    end

  end
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

require 'rails_admin/config/fields/types/text'
require 'rails_admin/config/fields/types/string'

module RailsAdmin
  module Config
    module Fields
      module Types

        class Textml < RailsAdmin::Config::Fields::Types::Text
          include RegisterType

          register_instance_option :partial do
            :form_textml
          end

        end

        class CKEditorml < RailsAdmin::Config::Fields::Types::CKEditor
          include RegisterType

          register_instance_option :partial do
            :form_textml
          end

        end

        class Stringml < RailsAdmin::Config::Fields::Types::String
          include RegisterType

          register_instance_option :partial do
            :form_fieldml
          end
        end

      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|

  if properties[:name] == :textml 
    fields << RailsAdmin::Config::Fields::Types::Textml.new(parent, properties[:name], properties)
    true
  else
    false
  end

  if properties[:name] == :stringml
    fields << RailsAdmin::Config::Fields::Types::Stringml.new(parent, properties[:name], properties)
    true
  else
    false
  end
end



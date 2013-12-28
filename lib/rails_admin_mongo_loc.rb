require "rails_admin_mongo_loc/engine"
require 'active_support/concern'

module ConfigureBasicType
  extend ActiveSupport::Concern

  included do
    RailsAdmin::Config::Fields::Types::register(self)

    register_instance_option :allowed_methods do
      [method_name, name.to_s + '_translations']
    end

    register_instance_option :tabbed do
      true
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
          include ConfigureBasicType

          register_instance_option :partial do
            :form_textml
          end

        end

        class CodeMirrorml < RailsAdmin::Config::Fields::Types::CodeMirror
          include ConfigureBasicType

          register_instance_option :partial do
            :form_code_mirrorml
          end

        end

        class Wysihtml5ml < RailsAdmin::Config::Fields::Types::Wysihtml5
          include ConfigureBasicType

          register_instance_option :partial do
            :form_wysihtml5ml
          end

        end

        class CKEditorml < RailsAdmin::Config::Fields::Types::CKEditor
          include ConfigureBasicType

          register_instance_option :partial do
            :form_ck_editorml
          end

        end

        class Stringml < RailsAdmin::Config::Fields::Types::String
          include ConfigureBasicType

          register_instance_option :partial do
            :form_fieldml
          end

        end

      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|

  case properties[:name]
    when :ck_editorml
      fields << RailsAdmin::Config::Fields::Types::CKEditorml.new(parent, properties[:name], properties)
      true
    when :textml
      fields << RailsAdmin::Config::Fields::Types::Textml.new(parent, properties[:name], properties)
      true
    when :stringml
      fields << RailsAdmin::Config::Fields::Types::Stringml.new(parent, properties[:name], properties)
      true
    when :code_mirrorml
      fields << RailsAdmin::Config::Fields::Types::CodeMirrorml.new(parent, properties[:name], properties)
      true
    when :wysihtml5ml
      fields << RailsAdmin::Config::Fields::Types::Wysihtml5ml.new(parent, properties[:name], properties)
      true
    else
      false
  end

end



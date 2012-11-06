module Mailview
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a Mailview initializer"

      def copy_initializer
        template "mailview.rb", "config/initializers/mailview.rb"
      end
    end
  end
end

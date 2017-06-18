module AssetHost
  module AssetHostKpcc
    class InstallGenerator < Rails::Generators::Base
      desc 'Installs AssetHost KPCC Plugin'

      def create_install_file
        javascript_path = File.join('app', 'assets', 'javascripts', 'application.js')
        stylesheet_path = File.join('app', 'assets', 'stylesheets', 'application.css.scss')
        append_to_file stylesheet_path, <<~SCSS
          @import "asset_host_kpcc"
        SCSS
        append_to_file javascript_path, "//= require asset_host_kpcc"
      end
    end
  end
end
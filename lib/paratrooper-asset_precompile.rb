require "paratrooper-asset_precompile/version"
require 'paratrooper/notifier'
require 'paratrooper/system_caller'

module Paratrooper
  module AssetPrecompile
    class Notifier < Paratrooper::Notifier
      attr_reader :system_caller

      def initialize(options = {})
        @system_caller = options[:system_caller] || Paratrooper::SystemCaller.new
      end

      def app_restart(options = {})
        command = "heroku run rake assets:precompile --app #{options[:app_name]}"
        system_caller.execute(command)
      end
    end
  end
end

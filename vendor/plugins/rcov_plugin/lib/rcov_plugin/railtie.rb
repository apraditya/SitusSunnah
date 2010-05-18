require 'rcov_plugin'
require 'rails'

module RcovPlugin
  class Railtie < Rails::Railtie
    rake_tasks do
      puts "Loading rake tasks"
      load "tasks/rcov.rake"
    end
  end
end
require "capistrano/plugin"
module Capistrano
  class ForemanSystemd < Capistrano::Plugin
    def define_tasks
      eval_rakefile File.expand_path('../tasks/nginx.rake', __FILE__)
    end
  end
end

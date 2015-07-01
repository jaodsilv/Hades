if defined?(Konacha)
  Konacha.configure do |config|
    require 'capybara/poltergeist'

    config.spec_dir     = "spec/javascripts"
    config.spec_matcher = /_spec\.|_test\./
    config.stylesheets  = %w(application)
    config.driver = :poltergeist
  end

  module Konacha
    class << self
      old_run = instance_method(:run)

      define_method(:run) do
        prev_server = Capybara.server
        begin
          Capybara.server do |app, port|
            require 'rack/handler/thin'
            Rack::Handler::Thin.run(app, :Port => port)
          end
          old_run.bind(self).call
        ensure
          Capybara.server(&prev_server)
        end
      end
    end
  end
end

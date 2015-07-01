source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use MySQL as the database for Active Record
#gem 'mysql2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.0.3'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use Rails Html Sanitizer for HTML sanitization
gem 'rails-html-sanitizer', '~> 1.0'

# Twitter Bootstrap for layout
gem 'twitter-bootstrap-rails', :git => 'https://github.com/seyhunak/twitter-bootstrap-rails.git'

# JQueryUI
gem 'jquery-ui-rails', '~> 5.0.0'

# User management system
gem 'devise'
gem 'responders'

group :test do
  # Easier test writing
  gem "shoulda-matchers", "~> 2.8.0"

  # Test coverage
  gem 'simplecov', require: false

  gem "codeclimate-test-reporter", require: nil

  # For Konacha
  gem 'thin'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Test framework
  gem 'rspec-rails', '~> 3.2.1'

  # Mock framework
  gem 'mocha', '~> 1.1.0'

   # Deployment
  gem 'capistrano', "~>3.4.0", require: false
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm', "~>0.1.0"

  # Fixtures made easy
  gem 'factory_girl_rails', '~> 4.5.0'

  # JavaScript unit tests
  gem "konacha", "~> 3.3.0"
  gem 'phantomjs', :require => 'phantomjs/poltergeist'
  gem 'sprockets', '~>2.12.3' # spckets 3.0.3 breaks konacha

  # Better error interface
  gem 'better_errors'
  gem 'binding_of_caller'

  # Gem to pdf generator
  gem 'pdfkit'
  gem 'wkhtmltopdf-binary'
end

# Acceptance tests
group :test, :cucumber do
  gem 'cucumber', '~> 1.3.18'
  gem 'cucumber-rails', :require => false
  # Version fixed greater than 1.4.1. See:
  # https://github.com/DatabaseCleaner/database_cleaner/issues/317
  gem 'database_cleaner', '>= 1.4.1'
  gem 'poltergeist', '~> 1.6.0'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'
# Pg is the Ruby interface to the PostgreSQL RDBMS
gem 'pg'
# Official Sass port of Bootstrap 2 and 3
gem 'bootstrap-sass', '~> 3.3.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Slim templates generator for Rails 3 and 4
gem 'slim-rails'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use Puma as the app server
gem 'puma', group: :production
# Makes running your Rails app easier. Based on the ideas behind 12factor.net
gem 'rails_12factor', group: :production

# Ruby library for Wit.ai
gem 'wit'

# Integrate Facebook's messenger platform with your rails app
# gem 'messenger_platform', :git => 'http://github.com/tinkerbox/messenger_platform.git'
gem 'messenger_platform', :path => '../messenger_platform'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Loads environment variables from `.env`
  gem 'dotenv-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Mutes assets pipeline log messages
  gem 'quiet_assets'
end


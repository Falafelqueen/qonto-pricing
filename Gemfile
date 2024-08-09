source "https://rubygems.org"

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.3", ">= 7.1.3.4"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"


# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

gem 'importmap-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

gem 'autoprefixer-rails'
gem 'simple_form', github: 'heartcombo/simple_form'
gem 'tailwindcss-rails'


group :development, :test do
  # Store secret keys in .env file
  gem 'rspec-rails'
  gem 'dotenv-rails'
  gem 'webdrivers'
  # Check performance of queries [https://github.com/kirillshevch/query_track]
  gem 'query_track'
  gem 'factory_bot_rails'
  gem 'faker'
  # Rubocop for formating and tidying up code
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rails-accessibility', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-capybara', require: false
  gem 'rubocop-factory_bot', require: false
  # Bullet gem to detect N+1 queries
  gem 'bullet'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

group :test do
  # Rspec is set up for both test and development
  # To launch the html in browser and see the test (debugging purposes)
  gem "launchy"

  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"

  # One-liners to test common Rails functionality [https://github.com/thoughtbot/shoulda-matchers/tree/main]
  gem 'shoulda-matchers', '~> 6.0'
end

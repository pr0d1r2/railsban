# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.4', '>= 7.0.4.2'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails', '~> 3.4'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4', require: false

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0', require: false

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails', '~> 1.1'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails', '~> 1.3', require: false

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails', '~> 1.2', require: false

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder', '~> 2.11', require: false

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0', require: false

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '~> 1.2022', '>= 1.2022.7', platforms: %i[mingw mswin x64_mingw jruby], require: false

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '~> 1.16', require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', '~> 1.7', require: false, platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'alfonsox', '~> 0.2', require: false

  gem 'brakeman', '~> 5.4', require: false
  gem 'bundler-audit', '~> 0.9', require: false

  gem 'erb_lint', '~> 0.3', require: false
  gem 'fasterer', '~> 0.10', require: false

  gem 'guard', '~> 2.18', require: false
  gem 'guard-minitest', '~> 2.4', require: false
  gem 'guard-rubocop', '~> 1.5', require: false

  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console', '~> 4.2', require: false

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  gem 'image_optim', '~> 0.31', require: false
  gem 'image_optim_pack', '~> 0.9', require: false
  gem 'mdl', '~> 0.12', require: false

  gem 'overcommit', '~> 0.60', require: false
  gem 'rails_best_practices', '~> 1.23'

  gem 'reek', '~> 6.1', require: false

  gem 'rubocop', '~> 1.47', require: false
  gem 'rubocop-capybara', '~> 2.17', require: false
  gem 'rubocop-i18n', '~> 3.0', require: false
  gem 'rubocop-performance', '~> 1.16', require: false
  gem 'rubocop-rails', '~> 2.18', require: false
  gem 'rubocop-rake', '~> 0.6', require: false
  gem 'rubocop-require_tools', '~> 0.1', require: false
  gem 'rubocop-thread_safety', '~> 0.4', require: false

  gem 'yard', '~> 0.9', require: false
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara', '~> 3.38', require: false
  gem 'selenium-webdriver', '~> 4.8', require: false
  gem 'webdrivers', '~> 5.2', require: false
end

group :production do
  gem 'pg', '~> 1.4', require: false
end

gem 'better_html', '~> 2.0', require: false

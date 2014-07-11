source 'https://rubygems.org'

ruby '2.1.1'

gem 'airbrake'
gem 'bourbon', '~> 3.2.1'
gem 'coffee-rails'
gem 'delayed_job_active_record'
gem 'email_validator'
gem 'flutie'
gem 'high_voltage'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'neat', '~> 1.5.1'
gem 'rack-timeout'
gem 'rails', '~> 4.1.0'
gem 'recipient_interceptor'
gem 'sass-rails', '~> 4.0.3'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'simple_form', '~> 3.1.0.rc1'
gem 'country_select'
gem 'title'
gem 'uglifier'
gem 'unicorn'
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'

gem 'acts-as-taggable-on'
gem "font-awesome-rails"

group :development do
  gem 'foreman'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'annotate'
gem 'sqlite3'
end

group :development, :test do
  gem 'awesome_print'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'rspec-rails', '>= 2.14'
end

group :test do
  gem 'capybara-webkit', '>= 1.0.0'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

group :staging, :production do
  gem 'rails_12factor'
  gem 'newrelic_rpm', '>= 3.7.3'
  gem 'pg'
end

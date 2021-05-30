source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# core
gem 'rails', '~> 5.1.7'

# Config
gem 'dotenv-rails', '~> 2.2'
gem 'rails-i18n'
gem 'config'

# Middleware
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'

# View/Front
gem 'webpacker'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'haml-rails', '~> 1.0'
gem 'turbolinks', '~> 5'

# Backend
gem 'devise'
gem 'jbuilder', '~> 2.5'
gem 'enumerize'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-github'
gem 'carrierwave'
gem 'cloudinary'
gem 'gon'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

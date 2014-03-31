source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '~> 3.2.14'
gem 'jquery-rails'
gem 'rmagick', :require => 'RMagick'
gem 'newrelic_rpm'
gem 'unicorn'
gem 'gabba'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'turbo-sprockets-rails3'
end

group :production do
  gem 'heroku_rails_deflate'
end

group :development do
  gem 'pry'
  gem 'dotenv-rails'
end

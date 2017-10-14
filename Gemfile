source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.6'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise', '~> 4.3'
gem 'boot'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'gritter', '~> 1.2'
gem "administrate"
gem "bourbon"
gem 'pundit', '~> 1.1'
gem 'twilio-ruby', '~> 5.3', '>= 5.3.1'
gem 'kaminari', :git => 'https://github.com/kaminari/kaminari' # if using github for gem, the issue is that Rubygem has an outdated version with an issue



group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.8'
  gem 'dotenv-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

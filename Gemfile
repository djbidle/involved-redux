source 'https://rubygems.org'
#ruby "2.2.4"  

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# for deployment
gem "builder", "~> 3.2.2"
# Use sqlite3 as the database for Active Record
gem 'mysql2', '~> 0.3.20'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.1'
# Use Bumla for css 
gem 'bulma-rails', '~> 0.0.15'
# Use font awesome
gem 'font-awesome-rails', '~> 4.5.0.1'
# use JSON
gem 'json'
# Use for chart
gem 'chartkick', '~> 1.4', '>= 1.4.1'
# Used to as a fix
gem 'railties', '~> 4.2.5'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#using rake for heroku
gem 'rake', '~> 10.5.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use for filling up our database with fake users and setting pagnation
gem 'faker', '1.4.2'
gem 'will_paginate', '~> 3.1'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
#gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
  
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  
  # Dep for rest-client
  gem 'pry', '~> 0.10.3'
  gem 'pry-doc', '~> 0.8.0'
  gem 'rdoc', '~> 4.2', '>= 4.2.2'
  gem 'rspec', '~> 3.4'
# gem 'webmock', '~> 1.24', '>= 1.24.2'

end

group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
  gem 'puma', '~> 3.12'
end

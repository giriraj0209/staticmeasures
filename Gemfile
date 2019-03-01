source 'https://rubygems.org'
ruby '2.3.7'

gem 'rails', '~> 4.2.7'

# Use MongoDB just like in Cypress v2!
gem 'mongoid', '~> 5.0.2'
gem 'mongo'
# gem 'mongoid', '~> 4.0.2'
gem 'bson_ext', '~> 1.5.1'
gem 'mustache'

gem 'delayed_job_mongoid', git: 'https://github.com/collectiveidea/delayed_job_mongoid', tag: 'v2.2.0'
gem 'cql_qdm_patientapi',git: 'https://github.com/projecttacoma/cql_qdm_patientapi.git', tag: 'v1.2.0'
gem 'cqm-converter', git: 'https://github.com/OSEHRA/cqm-converter.git', branch: 'master'
#gem 'cqm-converter',path: "../cqm-converter"
gem 'cqm-models', '~> 0.8.4'
gem 'cqm-parsers', '~> 0.2.1'
gem 'cqm-validators', '~> 0.1.0'
#gem 'health-data-standards', path: "../health-data-standards"
gem 'health-data-standards', git: 'https://github.com/OSEHRA/health-data-standards.git', branch: 'r5'
gem 'quality-measure-engine', git: 'https://github.com/OSEHRA/quality-measure-engine.git', branch: 'bump_mongoid_v6'

gem "hqmf2js", :git=> "https://github.com/OSEHRA/hqmf2js.git"
gem 'nokogiri', '~> 1.8.1'
gem 'rubyzip'
gem 'net-ssh', '2.9.1'
gem 'hquery-patient-api', '1.0.4'
gem 'spreadsheet', '1.0.3'
gem 'sshkit'
# Should be removed in the future. This is only used for the
# admin log page. When the admin pages are switched to
# client side pagination, this can go away.
gem 'will_paginate'
gem 'bunny'
gem "active_model_serializers", '0.8.1'

gem 'json', :platforms => :jruby


gem 'highline', '~> 1.7.8'

gem 'devise', '4.1.1'

gem 'git'

gem 'protected_attributes', '~> 1.0.9'

gem 'foreman'
gem "thin" , '1.7.0'
gem 'formtastic'
gem 'cancan'
gem 'factory_girl', "4.7.0"
gem 'apipie-rails'

# Gems used for assets
gem 'bootstrap-sass', '~> 3.3.5'
gem 'sass-rails', "~> 5.0.4"
gem 'coffee-rails'
gem 'jquery-rails' # necessary for jquery_ujs w/data-method="delete" etc
gem 'bootstrap-datepicker-rails', '1.3.0.2'
gem 'uglifier', '~> 1.3.0'
gem 'non-stupid-digest-assets' # support vendored non-digest assets
gem 'jquery-datatables-rails', '3.3.0'
gem 'jquery-ui-rails', '~> 5.0.5'
gem 'select2-rails'

group :test, :develop, :ci do
  gem 'pry'
  gem 'jasmine', '2.0.1'
  gem 'turn', :require => false
  gem 'simplecov', :require => false
  gem 'simplecov-cobertura', :require => false
  gem 'mocha', :require => false
  gem "unicorn", :platforms => [:ruby, :jruby]
  gem 'minitest', "~> 5.3"
end

group :test, :develop do
  gem 'pry-byebug'
end

group :production do
  gem 'libv8', '~> 3.16.14.3'
  gem 'therubyracer', '~> 0.12.0', :platforms => [:ruby, :jruby] # 10.8 mountain lion compatibility
end

# gem 'handlebars_assets', '0.17.1'
gem 'handlebars_assets', '0.23.1'

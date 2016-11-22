require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'

#Local
ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(:development)

#Heroku
#ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

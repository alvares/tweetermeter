## 
# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.2.2' unless defined? RAILS_GEM_VERSION

##
# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  ##
  # Skip frameworks you're not going to use. To use Rails without a database
  # you must remove the Active Record framework.
  config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  ##
  # Specify gems that this application depends on. 
  # They can then be installed with "rake gems:install" on new installations.
  # You have to specify the :lib option for libraries, where the Gem name (sqlite3-ruby) differs from the file itself (sqlite3)
  config.gem 'twitter4r', :version => '0.3.0', :lib => 'twitter'
  config.gem 'json', :version => '1.1.3'
  config.gem 'rspec', :version => '1.1.11', :lib => 'spec'
  config.gem 'rack', :version => '0.4.0'
  config.gem 'hoe', :version => '1.8.2'
  ##
  # Make Time.zone default to the specified zone, and make Active Record store time values
  # in the database in UTC, and return them converted to the specified local zone.
  # Run "rake -D time" for a list of tasks for finding time zone names. Comment line to use default local time.
  config.time_zone = 'UTC'

  ##
  # Your secret key for verifying cookie session data integrity.
  # If you change this key, all old sessions will become invalid!
  # Make sure the secret is at least 30 characters and all random, 
  # no regular words or you'll be exposed to dictionary attacks.
  config.action_controller.session = {
    :session_key => '_tweetermeter_session',
    :secret      => 'aa662f8ec92f5c98bda547dbc6ee2747b5971999883d23361c60535fdf3895fb2efb8e6b5396d0cba44ff45759ae951b519fb611e5adc7c296aa18ad385c4820'
  }
end

require 'twitter/console'

def twitter_client_configuration_file
  File.join(Rails.root, 'config', 'twitter.yml')
end

def twitter_client_configuration
  Twitter::Client.from_config(twitter_client_configuration_file, Rails.env)
end

::TwitterClient = twitter_client_configuration
::TwitterClientCount = 100

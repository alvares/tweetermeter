require 'keyword_prospector'
ProfanityProspector = KeywordUtilities::KeywordProspector.new

def profanity_prospector_configuration_file
  File.join(Rails.root, 'config', 'profanity.yml')
end

def profanity_prospector_configuration
  YAML.load(File.read(profanity_prospector_configuration_file))
end

profanity_prospector_configuration.keys.each do |key|
  ProfanityProspector.add Base64.decode64(key)
end
ProfanityProspector.construct_fail

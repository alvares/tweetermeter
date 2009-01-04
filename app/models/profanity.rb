module Profanity
  def profanity
    returning values = [] do
      each do |status|
        ProfanityProspector.process(status.text, :filter_overlaps => true).each do |match|
           values << profanity_prospector_configuration[(Base64.encode64(match.keyword).chomp)]
        end
      end
    end
  end
end

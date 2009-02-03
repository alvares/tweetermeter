class Array
  include Profanity
  include Rating
end

class String
  def rateify
    downcase.tr '-', '_'
  end
end

module Rating
  def rate
    case sum
      when (0):       'G'
      when (1..3):    'PG'
      when (4..10):   'PG-13'
      when (11..20):  'R'
      else            'NC-17'
    end
  end
end

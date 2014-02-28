class StringMatch
  attr_accessor :base_string

  def base_string=(base_string='')
    raise "Argument must be of type String" unless base_string.class == String

    @base_string = base_string
  end

  alias :initialize :base_string=

  def match match_string
    matched_characters = @base_string.split(//).collect do |character|
      character if match_string.include?(character)
    end
    matched_characters.join.squeeze
  end
end

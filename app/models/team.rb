class Team
  
  attr_accessor :name, :motto
  
  def initialize(attrs)
    @name = attrs[:name]
    @motto = attrs[:motto]
  end
  
end
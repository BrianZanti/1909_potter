class Character
  attr_reader :name,
              :house,
              :patronus,
              :role

  def initialize(attributes)
    @name = attributes[:name]
    @house = attributes[:house]
    @role = attributes[:role] || 'unkown'
    @patronus = attributes[:patronus] || 'unkown'
    # if attributes[:patronus]
    #   @patronus = attributes[:patronus]
    # else
    #   @patronus = 'unkown'
    # end
    # if attributes[:role]
    #   @role = attributes[:role]
    # else
    #   @role = 'unkown'
    # end
  end
end

class PotterSearchResults
  attr_reader :house

  def initialize(house)
    @house = house
  end

  def count
    characters.count
  end

  def characters
    @characters ||= load_characters
    # CharacterFactory.new.create_characters()
  end

  def load_characters
    json = PotterService.characters(house)
    create_characters(json)
  end

  def create_characters(character_data)
    character_data.map do |character|
      Character.new(character)
    end
  end
end

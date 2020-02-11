class PotterService
  def self.characters(house)
    new.characters(house)
  end

  def characters(house)
    get_json('characters', {
      house: house,
      orderOfThePhoenix: true
    })
  end

private

  def get_json(uri, parameters)
    resp = conn.get(uri) do |req|
      req.params = req.params.merge(parameters)
    end

    json = JSON.parse(resp.body, symbolize_names: true)
  end

  def conn
    conn = Faraday.new(
      url: 'https://www.potterapi.com/v1/',
      params: {key: ENV['POTTER_API_KEY']}
    )
  end
end

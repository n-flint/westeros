class WesterosService

  def members(house)
    get_json(house)
  end

  private
  def conn 
    Faraday.new('http://westerosapi.herokuapp.com/api/v1/') do |f|
      f.params['api_key'] = ENV['WESTEROS_API_KEY']
      f.adapter Faraday.default_adapter
    end
  end

  def get_json(house)
    response = conn.get("house/#{house}")
    JSON.parse(response.body)['data'][0]['attributes']['members']
  end
end
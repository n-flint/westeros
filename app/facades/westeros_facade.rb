class WesterosFacade

  def initialize(house)
    @house = house
  end

  def member_count
    conn = Faraday.new('http://westerosapi.herokuapp.com/api/v1/') do |f|
      f.params['api_key'] = ENV['WESTEROS_API_KEY']
      f.adapter Faraday.default_adapter
    end
    response = conn.get("house/#{@house}")
    members = JSON.parse(response.body)['data'][0]['attributes']['members']
    members.count
  end

end
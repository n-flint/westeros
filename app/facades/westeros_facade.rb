class WesterosFacade

  def initialize(house)
    @house = house
  end

  def member_count
    members.count
  end

  def members
    members = service.members(@house)
    members.map do |member|
      Member.new(member)
    end
  end

  private
  def service
    @service ||= WesterosService.new
  end
end
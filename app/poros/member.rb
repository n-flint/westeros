class Member
  attr_reader :id, :name

  def initialize(member_data)
    @id = member_data['id']
    @name = member_data['name']
  end
end
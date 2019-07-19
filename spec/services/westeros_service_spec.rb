require 'rails_helper'

RSpec.describe WesterosService do
  it 'exists' do
    service = WesterosService.new

    expect(service).to be_a WesterosService
  end

  describe '.members' do
    it 'returns members data' do
      service = WesterosService.new

      members = service.members(1)

      expect(members).to be_a Array
    end
  end
end
require 'rails_helper'

RSpec.describe Member do
  before :each do
    member_data = {id: 1, name: 'my name'}
    @member = Member.new(member_data)
  end
  it 'exists' do
    expect(@member.class).to eq(Member)
  end
end
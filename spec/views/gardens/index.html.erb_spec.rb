require 'rails_helper'

RSpec.describe "gardens/index", type: :view do
  before(:each) do
    assign(:gardens, [
      Garden.create!(
        name: "Name",
        user: nil,
        plant: ""
      ),
      Garden.create!(
        name: "Name",
        user: nil,
        plant: ""
      )
    ])
  end

  it "renders a list of gardens" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end

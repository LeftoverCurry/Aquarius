require 'rails_helper'

RSpec.describe "plants/index", type: :view do
  before(:each) do
    assign(:plants, [
      Plant.create!(
        name: "Name",
        frequency: 2,
        amount: 3,
        measure: "Measure",
        location: "Location",
        garden: nil
      ),
      Plant.create!(
        name: "Name",
        frequency: 2,
        amount: 3,
        measure: "Measure",
        location: "Location",
        garden: nil
      )
    ])
  end

  it "renders a list of plants" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Measure".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end

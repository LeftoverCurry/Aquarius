require 'rails_helper'

RSpec.describe "plants/show", type: :view do
  before(:each) do
    @plant = assign(:plant, Plant.create!(
      name: "Name",
      frequency: 2,
      amount: 3,
      measure: "Measure",
      location: "Location",
      garden: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Measure/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(//)
  end
end

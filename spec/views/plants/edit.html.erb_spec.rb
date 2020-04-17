require 'rails_helper'

RSpec.describe "plants/edit", type: :view do
  before(:each) do
    @plant = assign(:plant, Plant.create!(
      name: "MyString",
      frequency: 1,
      amount: 1,
      unit_of_measure: "MyString",
      location: "MyString",
      garden: nil
    ))
  end

  it "renders the edit plant form" do
    render

    assert_select "form[action=?][method=?]", plant_path(@plant), "post" do

      assert_select "input[name=?]", "plant[name]"

      assert_select "input[name=?]", "plant[frequency]"

      assert_select "input[name=?]", "plant[amount]"

      assert_select "input[name=?]", "plant[unit_of_measure]"

      assert_select "input[name=?]", "plant[location]"

      assert_select "input[name=?]", "plant[garden_id]"
    end
  end
end

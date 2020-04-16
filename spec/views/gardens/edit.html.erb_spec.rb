require 'rails_helper'

RSpec.describe "gardens/edit", type: :view do
  before(:each) do
    @garden = assign(:garden, Garden.create!(
      name: "MyString",
      user: nil,
      plant: ""
    ))
  end

  it "renders the edit garden form" do
    render

    assert_select "form[action=?][method=?]", garden_path(@garden), "post" do

      assert_select "input[name=?]", "garden[name]"

      assert_select "input[name=?]", "garden[user_id]"

      assert_select "input[name=?]", "garden[plant]"
    end
  end
end

require 'rails_helper'

RSpec.describe "gardens/new", type: :view do
  before(:each) do
    assign(:garden, Garden.new(
      name: "MyString",
      user: nil,
      plant: ""
    ))
  end

  it "renders new garden form" do
    render

    assert_select "form[action=?][method=?]", gardens_path, "post" do

      assert_select "input[name=?]", "garden[name]"

      assert_select "input[name=?]", "garden[user_id]"

      assert_select "input[name=?]", "garden[plant]"
    end
  end
end

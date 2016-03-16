require 'rails_helper'

RSpec.describe "apartments/index", type: :view do
  before(:each) do
    assign(:apartments, [
      Apartment.create!(
        :latitude => 1.5,
        :longitude => 1.5,
        :address => "Address",
        :name => "Name",
        :contact => "Contact"
      ),
      Apartment.create!(
        :latitude => 1.5,
        :longitude => 1.5,
        :address => "Address",
        :name => "Name",
        :contact => "Contact"
      )
    ])
  end

  it "renders a list of apartments" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
  end
end

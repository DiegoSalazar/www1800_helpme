require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :user => nil,
        :verbal_name => "Verbal Name",
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :phone => "Phone",
        :import_source => "Import Source"
      ),
      Contact.create!(
        :user => nil,
        :verbal_name => "Verbal Name",
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :phone => "Phone",
        :import_source => "Import Source"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Verbal Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Import Source".to_s, :count => 2
  end
end

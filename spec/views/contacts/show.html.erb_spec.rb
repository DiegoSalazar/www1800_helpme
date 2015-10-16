require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :user => nil,
      :verbal_name => "Verbal Name",
      :first_name => "First Name",
      :middle_name => "Middle Name",
      :last_name => "Last Name",
      :phone => "Phone",
      :import_source => "Import Source"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Verbal Name/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Import Source/)
  end
end

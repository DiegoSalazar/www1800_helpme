require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :user => nil,
      :verbal_name => "MyString",
      :first_name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString",
      :import_source => "MyString"
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_user_id[name=?]", "contact[user_id]"

      assert_select "input#contact_verbal_name[name=?]", "contact[verbal_name]"

      assert_select "input#contact_first_name[name=?]", "contact[first_name]"

      assert_select "input#contact_middle_name[name=?]", "contact[middle_name]"

      assert_select "input#contact_last_name[name=?]", "contact[last_name]"

      assert_select "input#contact_phone[name=?]", "contact[phone]"

      assert_select "input#contact_import_source[name=?]", "contact[import_source]"
    end
  end
end

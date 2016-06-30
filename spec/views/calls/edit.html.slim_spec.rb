require 'rails_helper'

RSpec.describe "calls/edit", type: :view do
  before(:each) do
    @call = assign(:call, Call.create!(
      :called => "MyString",
      :from => "MyString",
      :direction => "MyString",
      :status => "MyString",
      :recording_url => "MyText",
      :recording_duration => 1,
      :call_sid => "MyString",
      :account_sid => "MyString",
      :from_zip => "MyString",
      :from_city => "MyString",
      :from_state => "MyString",
      :from_country => "MyString",
      :meta => "MyText"
    ))
  end

  it "renders the edit call form" do
    render

    assert_select "form[action=?][method=?]", call_path(@call), "post" do

      assert_select "input#call_called[name=?]", "call[called]"

      assert_select "input#call_from[name=?]", "call[from]"

      assert_select "input#call_direction[name=?]", "call[direction]"

      assert_select "input#call_status[name=?]", "call[status]"

      assert_select "textarea#call_recording_url[name=?]", "call[recording_url]"

      assert_select "input#call_recording_duration[name=?]", "call[recording_duration]"

      assert_select "input#call_call_sid[name=?]", "call[call_sid]"

      assert_select "input#call_account_sid[name=?]", "call[account_sid]"

      assert_select "input#call_from_zip[name=?]", "call[from_zip]"

      assert_select "input#call_from_city[name=?]", "call[from_city]"

      assert_select "input#call_from_state[name=?]", "call[from_state]"

      assert_select "input#call_from_country[name=?]", "call[from_country]"

      assert_select "textarea#call_meta[name=?]", "call[meta]"
    end
  end
end

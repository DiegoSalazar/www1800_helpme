require 'rails_helper'

RSpec.describe "calls/index", type: :view do
  before(:each) do
    assign(:calls, [
      Call.create!(
        :called => "Called",
        :from => "From",
        :direction => "Direction",
        :status => "Status",
        :recording_url => "MyText",
        :recording_duration => 1,
        :call_sid => "Call Sid",
        :account_sid => "Account Sid",
        :from_zip => "From Zip",
        :from_city => "From City",
        :from_state => "From State",
        :from_country => "From Country",
        :meta => "MyText"
      ),
      Call.create!(
        :called => "Called",
        :from => "From",
        :direction => "Direction",
        :status => "Status",
        :recording_url => "MyText",
        :recording_duration => 1,
        :call_sid => "Call Sid",
        :account_sid => "Account Sid",
        :from_zip => "From Zip",
        :from_city => "From City",
        :from_state => "From State",
        :from_country => "From Country",
        :meta => "MyText"
      )
    ])
  end

  it "renders a list of calls" do
    render
    assert_select "tr>td", :text => "Called".to_s, :count => 2
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "Direction".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Call Sid".to_s, :count => 2
    assert_select "tr>td", :text => "Account Sid".to_s, :count => 2
    assert_select "tr>td", :text => "From Zip".to_s, :count => 2
    assert_select "tr>td", :text => "From City".to_s, :count => 2
    assert_select "tr>td", :text => "From State".to_s, :count => 2
    assert_select "tr>td", :text => "From Country".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

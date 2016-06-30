require 'rails_helper'

RSpec.describe "calls/show", type: :view do
  before(:each) do
    @call = assign(:call, Call.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Called/)
    expect(rendered).to match(/From/)
    expect(rendered).to match(/Direction/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Call Sid/)
    expect(rendered).to match(/Account Sid/)
    expect(rendered).to match(/From Zip/)
    expect(rendered).to match(/From City/)
    expect(rendered).to match(/From State/)
    expect(rendered).to match(/From Country/)
    expect(rendered).to match(/MyText/)
  end
end

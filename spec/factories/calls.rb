FactoryGirl.define do
  factory :call do
    called "MyString"
    from "MyString"
    direction "MyString"
    status "MyString"
    recording_url "MyText"
    recording_duration 1
    call_sid "MyString"
    account_sid "MyString"
    from_zip "MyString"
    from_city "MyString"
    from_state "MyString"
    from_country "MyString"
    meta "MyText"
  end
end

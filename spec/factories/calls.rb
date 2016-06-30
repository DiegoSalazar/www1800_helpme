# == Schema Information
#
# Table name: calls
#
#  id                 :integer          not null, primary key
#  called             :string(255)
#  from               :string(255)
#  direction          :string(255)
#  status             :string(255)
#  recording_url      :text
#  recording_duration :integer
#  call_sid           :string(255)
#  account_sid        :string(255)
#  from_zip           :string(255)
#  from_city          :string(255)
#  from_state         :string(255)
#  from_country       :string(255)
#  meta               :text
#  created_at         :datetime
#  updated_at         :datetime
#  recognized_speech  :text
#

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

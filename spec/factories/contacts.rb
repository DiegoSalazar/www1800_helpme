# == Schema Information
#
# Table name: contacts
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  verbal_name   :string(255)
#  first_name    :string(255)
#  middle_name   :string(255)
#  last_name     :string(255)
#  phone         :string(255)
#  import_source :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

FactoryGirl.define do
  factory :contact do
    user nil
verbal_name "MyString"
first_name "MyString"
middle_name "MyString"
last_name "MyString"
phone "MyString"
import_source "MyString"
  end

end

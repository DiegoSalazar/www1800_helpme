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

require 'rails_helper'

RSpec.describe Call, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

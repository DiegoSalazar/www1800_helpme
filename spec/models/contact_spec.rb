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

require 'rails_helper'

RSpec.describe Contact, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

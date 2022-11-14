# == Schema Information
#
# Table name: user_cafe_archives
#
#  id         :bigint           not null, primary key
#  memo       :text(65535)      not null
#  rating     :bigint           not null
#  visited_at :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cafe_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_user_cafe_archives_on_cafe_id  (cafe_id)
#  index_user_cafe_archives_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (cafe_id => cafes.id)
#  fk_rails_...  (user_id => users.id)
#
class UserCafeArchive < ApplicationRecord
  belongs_to :user
  belongs_to :cafe
end

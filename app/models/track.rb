# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  album_id   :string           not null
#  track_type :string           not null
#  name       :string           not null
#  lyrics     :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ActiveRecord::Base
  belongs_to(
    :album,
    class_name: "Album",
    foreign_key: :album_id,
    primary_key: :id
  )

end

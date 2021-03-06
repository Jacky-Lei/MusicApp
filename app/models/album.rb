# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  band_id    :integer          not null
#  ttype      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           not null
#

class Album < ActiveRecord::Base
  has_many(
    :tracks,
    class_name: "Track",
    foreign_key: :album_id,
    primary_key: :id
    dependent: :destroy
    )

  belongs_to(
    :band,
    class_name: "Band",
    foreign_key: :band_id,
    primary_key: :id
  )
end

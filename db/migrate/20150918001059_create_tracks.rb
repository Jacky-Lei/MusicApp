class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :album_id, null: false
      t.string :track_type, null: false
      t.string :name, null: false
      t.string :lyrics, null: false


      t.timestamps null: false
    end
    add_index :tracks, :album_id, unique: true

    add_column :albums, :name, :string, null: false
  end
end

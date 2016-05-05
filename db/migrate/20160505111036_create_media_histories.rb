class CreateMediaHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :media_histories do |t|
      t.text :media_id
      t.text :track_source
      t.text :album
      t.text :artist
      t.integer :duration
      t.text :genre
      t.text :album_art_uri
      t.text :title
      t.integer :track_number
      t.integer :num_tracks
      t.date :recorded_at
      t.float :latitude
      t.float :longitude
      t.float :accuracy
      t.float :altitude

      t.timestamps
    end
  end
end

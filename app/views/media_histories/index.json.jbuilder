json.array!(@media_histories) do |media_history|
  json.extract! media_history, :id, :media_id, :track_source, :album, :artist, :duration, :genre, :album_art_uri, :title, :track_number, :num_tracks, :recorded_at, :latitude, :longitude, :accuracy, :altitude
  json.url media_history_url(media_history, format: :json)
end

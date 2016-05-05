require 'test_helper'

class MediaHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @media_history = media_histories(:one)
  end

  test "should get index" do
    get media_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_media_history_url
    assert_response :success
  end

  test "should create media_history" do
    assert_difference('MediaHistory.count') do
      post media_histories_url, params: { media_history: { accuracy: @media_history.accuracy, album: @media_history.album, album_art_uri: @media_history.album_art_uri, altitude: @media_history.altitude, artist: @media_history.artist, duration: @media_history.duration, genre: @media_history.genre, latitude: @media_history.latitude, longitude: @media_history.longitude, media_id: @media_history.media_id, num_tracks: @media_history.num_tracks, recorded_at: @media_history.recorded_at, title: @media_history.title, track_number: @media_history.track_number, track_source: @media_history.track_source } }
    end

    assert_redirected_to media_history_path(MediaHistory.last)
  end

  test "should show media_history" do
    get media_history_url(@media_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_media_history_url(@media_history)
    assert_response :success
  end

  test "should update media_history" do
    patch media_history_url(@media_history), params: { media_history: { accuracy: @media_history.accuracy, album: @media_history.album, album_art_uri: @media_history.album_art_uri, altitude: @media_history.altitude, artist: @media_history.artist, duration: @media_history.duration, genre: @media_history.genre, latitude: @media_history.latitude, longitude: @media_history.longitude, media_id: @media_history.media_id, num_tracks: @media_history.num_tracks, recorded_at: @media_history.recorded_at, title: @media_history.title, track_number: @media_history.track_number, track_source: @media_history.track_source } }
    assert_redirected_to media_history_path(@media_history)
  end

  test "should destroy media_history" do
    assert_difference('MediaHistory.count', -1) do
      delete media_history_url(@media_history)
    end

    assert_redirected_to media_histories_path
  end
end

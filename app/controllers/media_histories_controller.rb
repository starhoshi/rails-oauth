class MediaHistoriesController < ApiController
  before_action :set_media_history, only: [:show, :edit, :update, :destroy]

  # GET /media_histories
  # GET /media_histories.json
  def index
    @media_histories = MediaHistory.all
  end

  # GET /media_histories/1
  # GET /media_histories/1.json
  def show
  end

  # GET /media_histories/new
  def new
    @media_history = MediaHistory.new
  end

  # GET /media_histories/1/edit
  def edit
  end

  # POST /media_histories
  # POST /media_histories.json
  def create
    @media_history = MediaHistory.new(media_history_params)

    respond_to do |format|
      if @media_history.save
        format.html { redirect_to @media_history, notice: 'Media history was successfully created.' }
        format.json { render :show, status: :created, location: @media_history }
      else
        format.html { render :new }
        format.json { render json: @media_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_histories/1
  # PATCH/PUT /media_histories/1.json
  def update
    respond_to do |format|
      if @media_history.update(media_history_params)
        format.html { redirect_to @media_history, notice: 'Media history was successfully updated.' }
        format.json { render :show, status: :ok, location: @media_history }
      else
        format.html { render :edit }
        format.json { render json: @media_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_histories/1
  # DELETE /media_histories/1.json
  def destroy
    @media_history.destroy
    respond_to do |format|
      format.html { redirect_to media_histories_url, notice: 'Media history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_history
      @media_history = MediaHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_history_params
      params.require(:media_history).permit(:media_id, :track_source, :album, :artist, :duration, :genre, :album_art_uri, :title, :track_number, :num_tracks, :recorded_at, :latitude, :longitude, :accuracy, :altitude)
    end
end

class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # render plain: "Hello #{@birds[3].name}"
    # render json: { message: 'Hashes of data will get converted to JSON' }
    # render json: ['As','well','as','arrays']
    # render json: @birds
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
  end
end

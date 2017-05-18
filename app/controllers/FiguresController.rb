class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'/figures/index'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures' do
    @title = Title.first_or_create(params["figure"])
    @lanmark = Landmark.first_or_create(params["figure"])
    @figure = Figure.first_or_create(params["figure"])
    @figure.landmarks << @landmark
    @figure.titles << @title
    # redirect "/figures/#{@figure.id}"
    erb :'/figures/show'
  end

  # @title = Title.first_or_create(params["figure"]["title"])
  # @lanmark = Landmark.first_or_create(params["figure"]["landmark"])
  # @figure = Figure.create(params["figure"]["name"])
  # @figure.landmarks << @landmark
  # @figure.titles << @title
  #

  # get '/figures/:id' do
  #   @figure = Figure.find(params[:id])
  #   erb :'/figures/show'
  # end


end

class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'/figures/index'
  end

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params["figure"])
    # binding.pry
    if params["title"]["name"]
      @title = title.create(params["title"])
      @figure.titles << @title
    end
    # @figure.landmarks << @landmark
    # redirect "/figures/#{@figure.id}"
    erb :'/figures/show'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'/figures/show'
  end


end

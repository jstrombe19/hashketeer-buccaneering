class HashketeersController < ApplicationController
  before_action :get_all_hashketeers, only: [:index, :destroy]

  def index
    render json: @hashketeers
  end

  def show
    @hashketeer = Hashketeer.find(params[:id])
    render json: @hashketeer
  end

  def create
    @hashketeer = Hashketeer.new
    @hashketeer.name = params[:name]
    @hashketeer.age = params[:age]
    @hashketeer.ship = params[:ship]
    @hashketeer.captain = params[:captain]
    @hashketeer.save
    render json: @hashketeer
  end

  def update
    @hashketeer = Hashketeer.find(params[:id])
    @hashketeer.update(
      name: params[:name],
      age: params[:age],
      ship: params[:ship],
      captain: params[:captain]
    )
    render json: @hashketeer
  end

  def destroy
    @hashketeer = Hashketeer.find(params[:id])
    @hashketeer.delete
    render json: @hashketeers
  end

  private

  def get_all_hashketeers
    @hashketeers = Hashketeer.all
  end

end

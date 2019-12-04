class GarbagesController < ApplicationController
  def index
    @garbages = Garbage.all
  end

  def new
  end

  def create
    garbage = Garbage.new
    garbage.title = params[:title]
    garbage.week = params[:week]
    garbage.alarm_time = params[:alarm_time]
    garbage.save
    redirect_to '/garbages'
  end

  def edit
    @garbage = Garbage.find(params[:id])
  end

  def update
    garbage = Garbage.find(params[:id])
    garbage.title = params[:title]
    garbage.week = params[:week]
    garbage.alarm_time = params[:alarm_time]
    garbage.save
    redirect_to '/garbages'
  end
end

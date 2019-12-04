class GarbagesController < ApplicationController
  def index
    @garbages = Garbage.all
  end

  def new
    @garbage = Garbage.new
  end

  def create
    garbage = Garbage.new
    garbage.title = params[:garbage][:title]
    garbage.week = params[:garbage][:week]
    garbage.alarm_time = params[:garbage][:alarm_time]
    garbage.save
    redirect_to '/garbages'
  end

  def edit
    @garbage = Garbage.find(params[:id])
  end

  def update
    garbage = Garbage.find(params[:id])
    garbage.title = params[:garbage][:title]
    garbage.week = params[:garbage][:week]
    garbage.alarm_time = params[:garbage][:alarm_time]
    garbage.save
    redirect_to '/garbages'
  end
end

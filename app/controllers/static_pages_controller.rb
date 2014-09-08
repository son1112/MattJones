class StaticPagesController < ApplicationController
  def home
    @rides = Ride.all
    @startTimes = @rides.pluck(:time_start)
    @uniqTimes = @startTimes.uniq
  end
end

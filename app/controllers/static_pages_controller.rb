class StaticPagesController < ApplicationController
  def home
    @rides = Ride.all
    
  end
end

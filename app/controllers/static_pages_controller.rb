class StaticPagesController < ApplicationController
  def home
    @rides = Ride.all
    @startTimes = @rides.pluck(:time_start)
    @uniqTimes = @startTimes.uniq

    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to :home
    else
      flash.now[:error] = 'Cannot send message.'
      render :home
    end
  end

  def submit_rides
    @rides = Ride.find(params[:ride_ids])
    @selections = []
    @rides.each do |r|
      @selections.push ride.time_start
    end
    redirect_to root_path
  end

end

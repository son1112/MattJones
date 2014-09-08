module StaticPagesHelper
  Dates = []

  def rideDate (ride)
    ride.time_start.to_date.strftime("%B %e")
  end

  def getDates 
    @rides.each do |r|
      Dates.push rideDate(r)
    end
    Dates.uniq
  end
end

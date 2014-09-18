module ContactsHelper

  def datetime_to_natural(datetime)
    date = datetime.to_date.strftime("%B%e")
    time = datetime.to_time.strftime("%l:%M")    

    "#{date}th -#{time}"
  end

  def dates_natural(dates)
    natural_dates = []

    dates.each do |d|
      natural_dates.push datetime_to_natural(d)
    end
    
    natural_dates.each {|date| puts date}
  end

end

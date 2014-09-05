# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ride.delete_all

Ride.create!([
              {roundtrip: true, time_start: "2014-09-04 13:30:00 +0000".to_datetime, time_end: "2014-09-04 14:30:00 +0000".to_datetime},
              {roundtrip: true, time_start: "2014-09-04 15:00:00 +0000".to_datetime, time_end: "2014-09-04 15:30:00 +0000".to_datetime},
              {roundtrip: true, time_start: "2014-09-20 11:00:00 +0000".to_datetime, time_end: "2014-09-20 12:00 +0000".to_datetime},
              {roundtrip: true, time_start: "2014-09-27 11:00:00 +0000".to_datetime, time_end: "2014-09-27 12:00 +0000".to_datetime},
              {roundtrip: true, time_start: "2014-10-25 11:00:00 +0000".to_datetime, time_end: "2014-10-25 12:00 +0000".to_datetime},
              {roundtrip: true, time_start: "2014-11-01 11:00:00 +0000".to_datetime, time_end: "2014-11-01 12:00 +0000".to_datetime},
              {roundtrip: true, time_start: "2014-11-22 11:00:00 +0000".to_datetime, time_end: "2014-11-22 12:00 +0000".to_datetime}
             ])

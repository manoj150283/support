# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# require 'csv'
#
# csv_text = CSV.read(Rails.root.join('lib', 'seeds', 'data.CSV'))
# csv = CSV.parse(csv_text.scrub, headers: true)
# csv.each do |row|
#   t = Data.new
#   t.project = row['project']
#   t.status = row ['status']
#   t.csm = row ['csm']
#   t.support_engineer = ['support_engineer']
#   t.equipment = ['equipment']
#   t.warranty_start_date = ['warranty_start_date']
#   t.staff_dashboard = ['staff_dashboard']
#   t.live_locations = ['live_locations']
#   t.total_locations = ['total_locations']
#   t.support_coverage = ['support_coverage']
#   t.sla = ['sla']
#   t.save
#   puts "#{t.project}, #{t.status} saved"
# expand
#   puts "there are now #{project.count} rows in the project table"

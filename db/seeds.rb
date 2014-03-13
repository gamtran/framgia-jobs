# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv_importer"
M::Job.destroy_all
MasterImporter::CSVImporter.new(M::Job).execute
PASSWORD = "12345678"
Admin.destroy_all
Admin.create! id: 1, email: "job@framgia.com", password: PASSWORD,
  password_confirmation: PASSWORD
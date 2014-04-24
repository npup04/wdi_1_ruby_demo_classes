require_relative './insured_person'
require_relative 'log'

class InsuranceCompany

  include Log

  def initialize(company_name)
    @name = company_name
    @clients  = []
  end

  def name
    @name
  end

  def add_client(person)
    log("Adding the client #{person.full_name}")
    @clients << person
  end

  def clients
    @clients
  end

  def get_by_last_name(lname)
    @clients.select{ |client| client.last_name == lname }
  end
end

require 'pry'
require_relative 'person'
require_relative 'log'

# Inheritence
# InsuredPerson is a subclass of Person
class InsuredPerson < Person

  # Mixin the log behavior.
  include Log

  attr_reader :years_to_live, :ins_id
  attr_accessor :married, :smokes

  @@id_count = 0

  def self.gen_id
    @@id_count += 1
  end

  def self.count
    @@id_count
  end

  @@all_people = []

  def self.insurable_people
    @@all_people.select do |person|
      person.give_insurance?
    end
  end

  def initialize(fname, lname, dob_str)
    # call the parent initialize method with the parameters
    super

    @ins_id = InsuredPerson.gen_id
    @@all_people << self
  end

  def is_married?
    married
  end

  def smokes?
    smokes
  end

  def expected_death_year
    Chronic.parse("#{years_to_live} years from now").year
  end

  def give_insurance?
    #     binding.pry
    insurable =  years_to_live > 20

    log("#{self.full_name} is #{insurable ? 'Not Denied' : 'Denied'} life insurance")
    insurable
  end

  private
  def years_to_live
    79 - age + (is_married? ? 5: 0) - (smokes? ? 7: 0)
  end

end

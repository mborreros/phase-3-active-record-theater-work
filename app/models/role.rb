require "pry"

class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    actors_array = []
    actors_array << Audition.find_by(role_id: self.id).actor
    actors_array
  end

  def locations
    locations_array = []
    locations_array << Audition.find_by(role_id: self.id).location
    locations_array
  end

  def lead
    if Audition.where(role_id: self.id).exists?
      Audition.where(role_id: self.id).first
    else
      'no actor has been hired for this role'
    end
  end

  def understudy
    if Audition.where(role_id: self.id).count > 1
      Audition.where(role_id: self.id).second
    else
      'no actor has been hired for understudy for this role'
    end
  end

end
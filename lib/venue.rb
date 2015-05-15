class Venue < ActiveRecord::Base
  has_and_belongs_to_many :bands 
  validates(:venue_name, {:presence => true, :length => {:maximum => 50}})
  before_save(:upcase)

private
  def upcase
    self.venue_name = venue_name.titlecase
  end
end

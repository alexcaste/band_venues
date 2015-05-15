class Venue < ActiveRecord::Base
  has_many :concerts
  has_many :bands, through: :concerts
  validates(:venue_name, {:presence => true, :length => {:maximum => 50}})
  before_save(:upcase)

private
  def upcase
    self.venue_name = venue_name.capitalize
  end
end
